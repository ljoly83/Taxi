import { NgModule } from '@angular/core';
import { PreloadAllModules, RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  { path: '', loadChildren: './tabs/tabs.module#TabsPageModule' },
  { path: 'ambulance', loadChildren: './simulator/ambulance/ambulance.module#AmbulancePageModule' },
  { path: 'taxi', loadChildren: './simulator/taxi/taxi.module#TaxiPageModule' },
  { path: 'vsl', loadChildren: './simulator/vsl/vsl.module#VslPageModule' },
  { path: 'settings', loadChildren: './simulator/settings/settings.module#SettingsPageModule' },

];
@NgModule({
  imports: [
    RouterModule.forRoot(routes, { preloadingStrategy: PreloadAllModules })
  ],
  exports: [RouterModule]
})
export class AppRoutingModule { }
