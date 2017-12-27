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

//
// Make the curl request to github API
//
$ch = curl_init($api_endpoint);
$curl_options = array(
	CURLOPT_RETURNTRANSFER => true,
	CURLOPT_TIMEOUT => 2,
	CURLOPT_USERPWD => "$username:$token",
	CURLOPT_USERAGENT => 'IAG slack scripts'
);
curl_setopt_array($ch, $curl_options);
$raw_response = curl_exec($ch);
$response =  json_decode($raw_response,true);

// compose slack message
// save the commit author in a temp file so other probo processes can access it
$commit_author = $response['commit']['author']['name'];
file_put_contents('/tmp/build_committer.txt', $commit_author);
$commit_message = $response['commit']['message'];
if (!$commit_author || !$commit_message){
	echo "Error fetching info from github api\n";
	var_dump($raw_response);
}

$slack_message =  "Commit: https://github.com/sparshi/Behat_Probo/commit/${COMMIT_REF}\n";
		"Probo Build: https://app.probo.ci/#/dashboard/build/${BUILD_ID}\n";
		"Commit author: ${commit_author}\n";
		"Commit message: ```${commit_message}```\n";
// 		file_get_contents("slack_output__behat.txt")."\n".

echo "Hello";
