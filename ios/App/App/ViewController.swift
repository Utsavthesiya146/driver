import UIKit
import Capacitor
import WebKit

class ViewController: CAPBridgeViewController {

    private let customInjectedJS = """
    (function() {
        var styleId = 'driverhub-custom-app-style';
        if (!document.getElementById(styleId)) {
            var style = document.createElement('style');
            style.id = styleId;
            style.type = 'text/css';
            style.appendChild(document.createTextNode(
                'header { padding-top: env(safe-area-inset-top, 0px) !important; }' +
                'footer { padding-top: 14px !important; padding-bottom: 14px !important; }' +
                'footer > div > div:nth-child(1), footer > div > div:nth-child(2) { display: none !important; }' +
                'footer > div > div:nth-child(3) { margin-top: 0px !important; padding-top: 4px !important; padding-bottom: 4px !important; border-top: none !important; }' +
                'header .lg\\\\:hidden a[href*="blogs"], header a[href*="blogs"].rounded-full, header a[href*="blogs"][class*="rounded-full"], header a[href*="blogs"][class*="border-amber-300"] { display: none !important; }' +
                'div.bg-amber-50.border-amber-200, div.border-amber-200:has(img[src*="logo-192.png"]) { display: none !important; }'
            ));
            (document.head || document.documentElement).appendChild(style);
        }

        var cleanUI = function() {
            var mobileBlogs = document.querySelectorAll('header .lg\\\\:hidden a[href*="blogs"], header a[href*="blogs"].rounded-full, header a[href*="blogs"][class*="rounded-full"]');
            for (var i = 0; i < mobileBlogs.length; i++) {
                mobileBlogs[i].style.setProperty('display', 'none', 'important');
            }
            var cards = document.querySelectorAll('div, p, button');
            for (var j = 0; j < cards.length; j++) {
                var text = cards[j].textContent || '';
                if (text.indexOf('Get the Driver Hub app') !== -1 || text.indexOf('Download App') !== -1 || text.indexOf('Driver Hub ಆ್ಯಪ್ ಪಡೆಯಿರಿ') !== -1 || text.indexOf('ಆ್ಯಪ್ ಡೌನ್‌ಲೋಡ್ ಮಾಡಿ') !== -1) {
                    var parentCard = cards[j].closest('.rounded-2xl') || cards[j].closest('.border-amber-200') || cards[j].closest('.bg-amber-50');
                    if (parentCard) {
                        parentCard.style.setProperty('display', 'none', 'important');
                    }
                }
            }
            var footers = document.querySelectorAll('footer');
            for (var k = 0; k < footers.length; k++) {
                var f = footers[k];
                var container = f.querySelector('div');
                var hasAnyCredit = false;
                if (container && container.children) {
                    for (var c = 0; c < container.children.length; c++) {
                        var child = container.children[c];
                        var cText = child.textContent || '';
                        var hasCredit = cText.indexOf('Designed & Developed') !== -1 || !!child.querySelector('a[href*="webhostingbaba.com"]');
                        if (hasCredit) {
                            hasAnyCredit = true;
                            child.style.setProperty('display', 'flex', 'important');
                            child.style.setProperty('margin-top', '0px', 'important');
                            child.style.setProperty('padding-top', '4px', 'important');
                            child.style.setProperty('padding-bottom', '4px', 'important');
                            child.style.setProperty('border-top', 'none', 'important');
                        } else {
                            child.style.setProperty('display', 'none', 'important');
                        }
                    }
                }
                if (hasAnyCredit) {
                    f.style.removeProperty('display');
                    f.style.setProperty('padding-top', '14px', 'important');
                    f.style.setProperty('padding-bottom', '14px', 'important');
                } else {
                    f.style.setProperty('display', 'none', 'important');
                }
            }
        };

        cleanUI();

        if (!window._driverhubObserver) {
            window._driverhubObserver = new MutationObserver(function() {
                cleanUI();
            });
            window._driverhubObserver.observe(document.documentElement, { childList: true, subtree: true });
        }
    })();
    """

    override open func capacitorDidLoad() {
        super.capacitorDidLoad()
        let userScript = WKUserScript(source: customInjectedJS, injectionTime: .atDocumentEnd, forMainFrameOnly: false)
        self.webView?.configuration.userContentController.addUserScript(userScript)
    }

    override open var preferredStatusBarStyle: UIStatusBarStyle {
        return .darkContent
    }
}
