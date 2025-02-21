#! /bin/bash
sweagent run \
  --agent.model.name=human \
  --config=config/human.yaml \
  --env.repo.github_url=https://github.com/SWE-agent/test-repo \
  --problem_statement.github_url=https://github.com/SWE-agent/test-repo/issues/1 \
  --env.image=python-sweer
