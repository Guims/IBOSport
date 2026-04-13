.class public Lib/player/models/LanguageModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private code:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "code"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "id"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "name"
    .end annotation
.end field

.field private wordModels:Lib/player/models/WordModels;
    .annotation runtime Lm4/b;
        value = "words"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/LanguageModel;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/LanguageModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/LanguageModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getWordModel()Lib/player/models/WordModels;
    .locals 1

    iget-object v0, p0, Lib/player/models/LanguageModel;->wordModels:Lib/player/models/WordModels;

    return-object v0
.end method
