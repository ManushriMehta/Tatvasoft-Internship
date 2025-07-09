import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms'; // ✅ Correct import

@Component({
  selector: 'app-demo',
  standalone: true,
  imports: [FormsModule], // ✅ Correct name
  templateUrl: './demo.component.html',
  styleUrls: ['./demo.component.css']
})
export class DemoComponent {
  name = '';
}
