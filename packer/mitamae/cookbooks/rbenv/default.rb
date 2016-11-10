node.reverse_merge!(
  rbenv: {
    user: 'root',
    global: '2.3.1',
    versions: ['2.3.1'],
    scheme: 'git',
    rbenv_root: '/root/.rbenv'
  },
  'rbenv-default-gems' => {
    'default-gems'=> %w(bundler pry rails),
    install: true
  },
)

profile_content = <<EOS
if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

mesg n

export\ RBENV_ROOT="$HOME/.rbenv"
export\ PATH="$RBENV_ROOT/bin:$PATH"
eval\ "$(rbenv\ init\ -)"

EOS

file '/root/.profile' do
  content profile_content
end

include_recipe 'rbenv::user'
