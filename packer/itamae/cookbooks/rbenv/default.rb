node.reverse_merge!(
  rbenv: {
    user: 'root',
    global: '2.3.1',
    versions: ['2.3.1'],
    scheme: 'git',
    rbenv_root: '/root/.rbenv'
  },
  'rbenv-default-gems': {
    'default-gems': %w(bundler pry rails),
    install: true
  },
)

bashrc_text = %w(
export\ RBENV_ROOT="$HOME/.rbenv"
export\ PATH="$RBENV_ROOT/bin:$PATH"
eval\ "$(rbenv\ init\ -)"
)
bashrc_path = "/root/.profile"

bashrc_text.each do |text|
  file ".profile add '#{text}'" do
    action :edit
    path bashrc_path
    block { |content| content << "\n#{text}" }
    not_if "grep '#{text}' #{bashrc_path}"
  end
end

include_recipe 'rbenv::user'
