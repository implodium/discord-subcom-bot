CREATE TABLE GUILD_CONFIG (
    guildId varchar(18),
    prefix varchar(30),
    CONSTRAINT PK_GUILD_CONFIG PRIMARY KEY (guildId)
);

CREATE TABLE PERMISSION (
    roleId varchar(18),
    count int,
    guildId varchar(18),
    CONSTRAINT PK_PERMISSION PRIMARY KEY (roleId),
    CONSTRAINT FK_PERMISSION_GUILD_CONFIG
        FOREIGN KEY (guildId) REFERENCES GUILD_CONFIG (guildId)
);

CREATE TABLE MEMBER (
    id varchar(18),
    count int
)