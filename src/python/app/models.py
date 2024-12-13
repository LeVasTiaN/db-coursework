from sqlalchemy import Column, Integer, String
from .database import Base


class User(Base):
    __tablename__ = "User"

    id = Column(Integer, primary_key=True, index=True)
    name = Column(String(64), nullable=False)
    email = Column(String(128), nullable=False, unique=True)
    password = Column(String(32), nullable=False)
    profilePicture = Column(String(128))
    status = Column(String(16))
