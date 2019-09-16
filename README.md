# Mountain Swag
Is an application that allows you to view and purchase gear with Mountain Logo's. The impetus to build this application was to be able to build a shopping application while also playing with the Stripe payment API.

# Client Side System Requirements
Xcode 10.3 is required
CocoaPods is utilized so that might be required, depending on how you clone the repo.

**Note:** Xcode is free and can be downloaded from the Mac App Store. Details on what CocoaPods is, and install guides can be found here (https://guides.cocoapods.org/using/getting-started).

# Back End
The back end is a Sinatra web application that expects you to send the token id returned by STPAddCardViewController, along with a few other parameters.

**Note:** Sinatra is a free, open source DSL for creating web applications in Ruby with minimal effort. It is an alternative to other Ruby web application frameworks such as Ruby on Rails.
Sinatra requires a Ruby environment greater or equal to 1.9.3. In order to check the version currently installed in your machine, open Terminal and paste the following command:
*ruby --version*

You should get something like:
ruby 2.4.0p0 (2016-12-24 revision 57164) [x86_64-darwin16]

If you have an older version, you need to update it to the latest. The best way to install a new Ruby version is through RVM, a command line utility tool which allows you to easily install, manage, and work with multiple Ruby environments from interpreters to sets of gems.

In Terminal, paste the following command:

*curl -sSL https://get.rvm.io | bash -s stable --ruby*

**Note:** Together with the installation of RVM, --ruby flag will install the newest version of Ruby.

*Run ruby --version* again. Now you should have all set up correctly.

At this point, you can install the Stripe, Sinatra and JSON gems.

Note: A gem is a pretty simple concept. You can think of a gem as a library or plugin. You can learn about them in "What is a gem?" (https://guides.rubygems.org/what-is-a-gem/).

Switch again to the Terminal and copy the following line:

*gem install stripe sinatra json*

Here you are instructing Ruby to install three gems into the current Ruby version. If you update your Ruby version, you'll need to repeat this process.

That's it! Now you should be able to run the web.rb by running *ruby web.rb* in the files local path. Then you can successfully build and run the application on the simulator.
