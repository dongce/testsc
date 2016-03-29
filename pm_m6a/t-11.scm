  if ( t->general.ecm_data.threat_evaluation == system_types::threat) {
      t->general.identity = system_types::identity_hostile;
    }
    // sck added at 2007/01/31
    else if (t->general.esm_data.threat_evaluation
             == system_types::non_threat ) {
      t->general.identity = system_types::identity_friend;
    }
    else if (t->general.esm_data.threat_evaluation
             == system_types::unknown_threat_evaluation) {
      t->general.identity = system_types::identity_unknown;
    }
    else if (t->general.esm_data.threat_evaluation
             == system_types::pending_threat_evaluation) {
      t->general.identity = system_types::identity_pending;
    }
    else{
