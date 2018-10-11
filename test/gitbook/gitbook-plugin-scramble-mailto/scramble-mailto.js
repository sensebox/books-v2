/**
 * open a mailto link with a given email address
 * @param {string} pre  Content of the address before the '@'
 * @param {string} post Content of the address after the '@',
 *                      may include additional mailto link args
 */
function openMail(preAt, postAt) {
  var s = ['mailto', preAt];
  window.location.href = s.join(':') + '@' + postAt;
}
