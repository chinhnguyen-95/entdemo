package main

import (
	"context"
	"entdemo/ent/enttest"
	"testing"
	"time"

	_ "github.com/mattn/go-sqlite3"
)

func TestCarColor(t *testing.T) {
	client := enttest.Open(t, "sqlite3", "file:ent?mode=memory&cache=shared&_fk=1")
	defer client.Close()

	ctx := context.Background()

	// Create a car with color
	car, err := client.Car.
		Create().
		SetModel("Toyota Camry").
		SetColor("Red").
		SetRegisteredAt(time.Now()).
		Save(ctx)

	if err != nil {
		t.Fatalf("failed creating car: %v", err)
	}

	// Verify the color field was set correctly
	if car.Color != "Red" {
		t.Errorf("expected color to be 'Red', got %s", car.Color)
	}

	// Query the car and verify color persists
	queriedCar, err := client.Car.Get(ctx, car.ID)
	if err != nil {
		t.Fatalf("failed querying car: %v", err)
	}

	if queriedCar.Color != "Red" {
		t.Errorf("expected queried car color to be 'Red', got %s", queriedCar.Color)
	}

	// Update the car color
	updatedCar, err := car.Update().SetColor("Blue").Save(ctx)
	if err != nil {
		t.Fatalf("failed updating car color: %v", err)
	}

	if updatedCar.Color != "Blue" {
		t.Errorf("expected updated car color to be 'Blue', got %s", updatedCar.Color)
	}
}