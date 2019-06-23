import { CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { VslPage } from './vsl.page';

describe('VslPage', () => {
  let component: VslPage;
  let fixture: ComponentFixture<VslPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ VslPage ],
      schemas: [CUSTOM_ELEMENTS_SCHEMA],
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(VslPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
