for script in .github/tests/*.sh; do
  if [ "$script" != ".github/tests/Tests.sh" ]; then
    bash -x "$script"
  fi
done