require 'rails_helper'

describe 'Task creation' do
  it 'successfully creates a new task' do
    visit '/tasks'

    # Paso 1: Tocar el botoncito
    click_link 'New task'

    # Step 2: Completa los datos
    fill_in 'task_title', with: 'Tarea de ejemplo'
    click_button 'Create Task'

    # Tarea creada exitosamente
    expect(page).to have_content('Task was successfully created.')
  end
end