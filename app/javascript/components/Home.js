import React, { Component } from 'react';
import Person from './person/Person';

class Home extends Component {
  constructor(props) {
    super(props);
    this.state = {
      person: {}
    };
    this.loadPerson = this.loadPerson.bind(this);
  }

  async loadPerson() {
    let response = await fetch('api/v1/persons/1');
    const person = await response.json();
    this.setState({ person: person });
  }

  componentDidMount() {
    this.loadPerson();
  }

  render() {
    return (
      <div>
        <Person data={this.state.person} />
      </div>
    );
  }
}

export default Home;