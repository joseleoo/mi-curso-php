<?php namespace projects;

use App\Models \{
  Project
};

// $jobs = Job::all();

$project=Project::all();

function printElement($project)
{
  // if($job->visible == false) {
  //   return;
  // }

  echo '<li class="work-position">';
  echo '<h5>' . $project->title . '</h5>';
  echo '<p>' . $project->description . '</p>';
  // echo '<p>' . $project->getDurationAsString() . '</p>';
  echo '<strong>Achievements:</strong>';
  echo '<ul>';
  echo '<li>Lorem ipsum dolor sit amet, 80% consectetuer adipiscing elit.</li>';
  echo '<li>Lorem ipsum dolor sit amet, 80% consectetuer adipiscing elit.</li>';
  echo '<li>Lorem ipsum dolor sit amet, 80% consectetuer adipiscing elit.</li>';
  echo '</ul>';
  echo '</li>';
}
