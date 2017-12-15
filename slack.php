<?php

// // COMMIT_REF is an environment variable set by probo
// // see https://docs.probo.ci/build/steps/
// $COMMIT_REF = getenv('COMMIT_REF');
// $BUILD_ID = getenv('BUILD_ID');
// $SLACK_WEBHOOK_URL = "https://hooks.slack.com/services/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";
//
// $slack_message =  "Commit: https://github.com/sparshi/Behat_Probo/commit/${COMMIT_REF}\n".
// 		"Probo Build: https://app.probo.ci/#/dashboard/build/${BUILD_ID}\n".
// 		"Commit author: ${commit_author}\n".
// 		"Commit message: ```${commit_message}```\n".
// 		file_get_contents("slack_output__behat.txt")."\n".

echo "Hello";
