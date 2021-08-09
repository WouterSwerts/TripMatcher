import { TestBed } from '@angular/core/testing';

import { TopersonalpageService } from './topersonalpage.service';

describe('TopersonalpageService', () => {
  let service: TopersonalpageService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(TopersonalpageService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
