import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { TabsPage } from './tabs.page';

const routes: Routes = [
  {
    path: 'tabs',
    component: TabsPage,
    children: [
      {
        path: 'home',
        children: [
          {
            path: '',
            loadChildren: '../home/home.module#HomePageModule'
          }
        ]
      },
      {
        path: 'simulator',
        children: [
          {
            path: '',
            loadChildren: '../simulator/simulator.module#SimulatorPageModule'
          },
          {
            path: 'ambulance',
            loadChildren: '../simulator/ambulance/ambulance.module#AmbulancePageModule'
          },
          {
            path: 'taxi',
            loadChildren: '../simulator/taxi/taxi.module#TaxiPageModule'
          },
          {
            path: 'vsl',
            loadChildren: '../simulator/vsl/vsl.module#VslPageModule'
          },

        ]
      },
      {
        path: 'settings',
        loadChildren: '../simulator/settings/settings.module#VslPageModule'
      },
      {
        path: 'register',
        children: [
          {
            path: '',
            loadChildren: '../register/register.module#RegisterPageModule'
          }
        ]
      },
      {
        path: '',
        redirectTo: '/tabs/tab1',
        pathMatch: 'full'
      }
    ]
  },
  {
    path: '',
    redirectTo: '/tabs/home',
    pathMatch: 'full'
  }
];

@NgModule({
  imports: [
    RouterModule.forChild(routes)
  ],
  exports: [RouterModule]
})
export class TabsPageRoutingModule { }
