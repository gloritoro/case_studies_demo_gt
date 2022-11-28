connection: "bi-eng-internal"

# include all the views
include: "/views/**/*.view"
#include these views from imported project
include: "//looker_blueprint/views/02_users.view.lkml"
include: "//looker_blueprint/views/05_distribution_centers.view.lkml"

datagroup: case_studies_demo_gt_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "24 hour"
}

persist_with: case_studies_demo_gt_default_datagroup

#this explore is being extended from imported project and displaying additional dimensions created in extending view
explore: users {
  from: users_refined
}

#this explore is being extended from imported project
explore:  distribution_centers {}
