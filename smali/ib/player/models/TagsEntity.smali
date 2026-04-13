.class public Lib/player/models/TagsEntity;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private duration:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "DURATION"
    .end annotation
.end field

.field private language:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "language"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lib/player/models/TagsEntity;->duration:Ljava/lang/String;

    iput-object v0, p0, Lib/player/models/TagsEntity;->language:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDuration()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/TagsEntity;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/TagsEntity;->language:Ljava/lang/String;

    return-object v0
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/TagsEntity;->duration:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/TagsEntity;->language:Ljava/lang/String;

    return-void
.end method
