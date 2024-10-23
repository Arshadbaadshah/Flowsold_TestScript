# web locators

app_email="xpath://input[@id='email']"
app_pwd="xpath=//input[@id='password']"
app_login="xpath://button[text()='Sign in']"


app_settings="xpath://span[normalize-space()='Settings']"
app_accounts="xpath://span[normalize-space()='Accounts']"
app_sign_in="xpath://span[normalize-space()='Sign In']"

# Close Notifications
close_signin_notification="xpath://a[@class='ant-notification-notice-close']"

# Create Events

app_events="xpath://span[normalize-space()='Events']"
create_event="xpath://button[@class='ant-btn css-1y49lf7 ant-btn-circle ant-btn-primary event-button']"
input_event="xpath://input[@placeholder='Event Name']"
event_create_cta="xpath://button[@class='ant-btn css-1y49lf7 ant-btn-primary']"

# Inventory
add_item_cta="xpath://div[@class='ant-col ant-col-16 css-1y49lf7']//button[@type='button']"

# Selecting Items
select_item_cta="xpath://tbody/tr[2]/td[3]"
item_checkbox="xpath://input[@type='checkbox']"
item_added_cta="xpath://span[normalize-space()='Add item']"
item_done_cta="xpath://span[contains(text(),'Done')]"

# Inventory Closure
inventory_cta="xpath://span[normalize-space()='Continue']"

# Launch
click_camera="xpath://span[@class='device-span'][normalize-space()='Integrated Camera (redirected)']"
click_microphone="xpath://span[@class='device-span'][normalize-space()='Default - Remote Audio']"
select_microphone="xpath://span[normalize-space()='Remote Audio']"
click_channel="xpath://span[contains(text(),'Select Channel')]"
select_channel="xpath://span[contains(text(),'FS Developer')]"
live_cta="xpath://span[normalize-space()='Begin Live Stream']"
go_live_cta="xpath://span[normalize-space()='Go Live']"

# Live Streaming
click_products="xpath://div[@id='rc-tabs-5-tab-comments']"
input_product="xpath://input[@placeholder='Type your comment here']"
submit_product="xpath://span[normalize-space()='Submit']"











txt_passwd="xpath://input[@id='password']"
btn_login="xpath://button[text()='Sign in']"