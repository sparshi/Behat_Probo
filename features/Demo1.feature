Feature: Verifying the features of Demo1

@blackbox @1
Scenario: Verify the links in the page
	Given I am at "/site/unclebobconsultingllc/the-truth-about-bdd"
	And I should see the link "Training"
	And I should see the link "Architecture & Design Consulting"
	And I should see the link "Code Reviews"
	And I should see the link "Agile Technical and Management Consulting"
	And I should see the link "Conference Appearances - Speaking and Keynotes"
	And I should see the link "Contact"

@blackbox @2
Scenario: Verify URL redirection for Training
	Given I am at "/site/unclebobconsultingllc/the-truth-about-bdd"
	When I follow "Training"
	Then the url should match "/site/unclebobconsultingllc/home/training"
	And I should see text matching "Training"

@blackbox @3
Scenario: Verify URL redirection for Architecture & Design Consulting
	Given I am at "/site/unclebobconsultingllc/the-truth-about-bdd"
	When I follow "Architecture"
	Then the url should match "/site/unclebobconsultingllc/home/architecture-and-design"
	And I should see text matching "Architecture and Design"

@blackbox @4
Scenario: Verify URL redirection for Architecture & Design Consulting
	Given I am at "/site/unclebobconsultingllc/the-truth-about-bdd"
	When I follow "Code"
	Then the url should match "/site/unclebobconsultingllc/home"
	And I should see text matching "Code"
