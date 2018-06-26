# Description:
#  SHA1 Encoding in Slack!
#
# Commands:
#  hubot sha1 - Encodes user provided strings with the pre-defined SHA1 key
#
# Author:
#  jonfairbanks

CryptoJS = require("crypto-js");

module.exports = (robot) ->
    robot.respond /sha1 (.*)/i, (msg) ->
        ciphertext = CryptoJS.SHA1(msg.match[1]).toString();
        msg.send '```' + ciphertext + '```'