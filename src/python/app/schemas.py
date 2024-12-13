from pydantic import BaseModel
from typing import Optional


class UserCreate(BaseModel):
    name: str
    email: str
    password: str
    profilePicture: Optional[str] = None
    status: Optional[str] = None


class UserResponse(BaseModel):
    id: int
    name: str
    email: str
    profilePicture: Optional[str] = None
    status: Optional[str] = None

    class Config:
        orm_mode = True
