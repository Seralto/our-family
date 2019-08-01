import React, { Component } from 'react';

import './Person.scss';
import male from 'images/male.png'
import female from 'images/female.png'

class Person extends Component {
  genderImage = (gender) => (
    gender === 'male' ? male : female
  )

  calculateAge = (dateString) => {
    const ageDiff = Date.now() - new Date(dateString).getTime();
    const ageDate = new Date(ageDiff);
    return Math.abs(ageDate.getUTCFullYear() - 1970);
  }

  render() {
    return (
      <div>
        {this.props.data.map((person) => (
          <div key={person.id} className={"Person " + person.gender}>
            <img src={this.genderImage(person.gender)} alt="" />

            {person.full_name}
            <br />
            {this.calculateAge(person.birthdate)} anos
          </div>
        ))}
      </div>
    );
  }
}

export default Person;