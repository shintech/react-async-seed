import React from 'react'

export default class Table extends React.Component {
  constructor (props) {
    super(props)

    this.state = {
      models: []
    }
  }

  componentDidMount () {
    return fetch('/api/users') // eslint-disable-line
      .then((response) => response.json())
      .then(json => {
        this.setState({ models: json })
      })
  }

  render () {
    return (
      <div className='panel panel-primary'>
        <div className='panel-heading'>
           Panel
        </div>
        <div className='panel-body table-responsive' id='wrapper'>
          <table className='table table-hover'>
            <thead>
              <tr>
                <th id='name' className='table-header'>Name</th>
                <th id='phone_number' className='table-header'>Phone Number</th>
              </tr>
            </thead>
            <tbody>
              {this.state.models.map(model =>
                <tr data-id={model.id} key={model.id}>
                  <td>{model.first_name} {model.last_name}</td>
                  <td><a href='#' onClick={handleClick}> {model.phone_number}</a></td>
                </tr>
              )}
            </tbody>
          </table>
        </div>
      </div>
    )
  }
}

function handleClick (e) {
  e.preventDefault()
  console.log('clicked')
}
