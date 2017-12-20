<?php

// COMMIT_REF is an environment variable set by probo
// see https://docs.probo.ci/build/steps/
$COMMIT_REF = getenv('COMMIT_REF');
$BUILD_ID = getenv('BUILD_ID');
$SLACK_WEBHOOK_URL = "https://hooks.slack.com/services/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";


// auth token owned by sparshidhiman
$token = 'c3363b208dfac67957a5870dd17cbaa0fb779d9c';
$username = 'sparshi';
$api_endpoint = "https://api.github.com/repos/sparshi/Behat_Probo/commits/${COMMIT_REF}";

$slack_message =  "Commit: https://github.com/sparshi/Behat_Probo/commit/${COMMIT_REF}\n";
		"Probo Build: https://app.probo.ci/#/dashboard/build/${BUILD_ID}\n";
		"Commit author: ${commit_author}\n";
		"Commit message: ```${commit_message}```\n";
// 		file_get_contents("slack_output__behat.txt")."\n".

echo "Hello";
