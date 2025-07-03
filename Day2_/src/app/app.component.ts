import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { DemoComponent } from "./demo/demo.component";
import { DirectivesComponent } from './directives/directives.component';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet, DemoComponent,DirectivesComponent],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = 'Welcome to day _2 demo project';
  isDisabled1= true;
  isDisabled2= false;
  clickcount= 0;

  onClick2(){
    this.clickcount++;
    //console.log(`You have clicked the enabled Button ${this.clickcount} times`);
  }
  
}



