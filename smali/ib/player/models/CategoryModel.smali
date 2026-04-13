.class public Lib/player/models/CategoryModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "category_id"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lm4/b;
        value = "category_name"
    .end annotation
.end field

.field private type:Lib/player/base/m;
    .annotation runtime Lm4/b;
        value = "category_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lib/player/base/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lib/player/models/CategoryModel;->id:Ljava/lang/String;

    iput-object p2, p0, Lib/player/models/CategoryModel;->name:Ljava/lang/String;

    iput-object p3, p0, Lib/player/models/CategoryModel;->type:Lib/player/base/m;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lib/player/models/CategoryModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lib/player/models/CategoryModel;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lib/player/models/CategoryModel;->name:Ljava/lang/String;

    const-string v1, "!@#%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lib/player/models/CategoryModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    iget-object v0, p0, Lib/player/models/CategoryModel;->name:Ljava/lang/String;

    return-object v0

    :cond_2
    :goto_0
    const-string v0, "Unknown category"

    return-object v0
.end method

.method public getType()Lib/player/base/m;
    .locals 1

    iget-object v0, p0, Lib/player/models/CategoryModel;->type:Lib/player/base/m;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/CategoryModel;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/CategoryModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setType(Lib/player/base/m;)V
    .locals 0

    iput-object p1, p0, Lib/player/models/CategoryModel;->type:Lib/player/base/m;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CategoryModel{category_id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lib/player/models/CategoryModel;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', category_name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lib/player/models/CategoryModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', category_type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lib/player/models/CategoryModel;->type:Lib/player/base/m;

    invoke-virtual {v1}, Lib/player/base/m;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
