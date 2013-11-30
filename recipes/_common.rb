include_recipe 'python::pip'

python_pip 'virtualenv' do
    action :install
    version '1.7.2'
end

python_pip 'virtualenvwrapper' do
    action :install
    version '3.5'
end

python_pip 'ipython'
python_pip 'ipdb'
