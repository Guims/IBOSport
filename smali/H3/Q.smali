.class public final LH3/Q;
.super LH3/E0;


# instance fields
.field public final a:LH3/S;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public final d:Ljava/lang/Boolean;

.field public final e:LH3/D0;

.field public final f:Ljava/util/List;

.field public final g:I


# direct methods
.method public constructor <init>(LH3/S;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;LH3/D0;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH3/Q;->a:LH3/S;

    iput-object p2, p0, LH3/Q;->b:Ljava/util/List;

    iput-object p3, p0, LH3/Q;->c:Ljava/util/List;

    iput-object p4, p0, LH3/Q;->d:Ljava/lang/Boolean;

    iput-object p5, p0, LH3/Q;->e:LH3/D0;

    iput-object p6, p0, LH3/Q;->f:Ljava/util/List;

    iput p7, p0, LH3/Q;->g:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    if-ne p1, p0, :cond_0

    goto/16 :goto_5

    :cond_0
    instance-of v0, p1, LH3/E0;

    if-eqz v0, :cond_6

    check-cast p1, LH3/E0;

    check-cast p1, LH3/Q;

    iget-object v0, p1, LH3/Q;->f:Ljava/util/List;

    iget-object v1, p1, LH3/Q;->e:LH3/D0;

    iget-object v2, p1, LH3/Q;->d:Ljava/lang/Boolean;

    iget-object v3, p1, LH3/Q;->c:Ljava/util/List;

    iget-object v4, p1, LH3/Q;->b:Ljava/util/List;

    iget-object v5, p1, LH3/Q;->a:LH3/S;

    iget-object v6, p0, LH3/Q;->a:LH3/S;

    invoke-virtual {v6, v5}, LH3/S;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, LH3/Q;->b:Ljava/util/List;

    if-nez v5, :cond_1

    if-nez v4, :cond_6

    goto :goto_0

    :cond_1
    invoke-interface {v5, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_0
    iget-object v4, p0, LH3/Q;->c:Ljava/util/List;

    if-nez v4, :cond_2

    if-nez v3, :cond_6

    goto :goto_1

    :cond_2
    invoke-interface {v4, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_1
    iget-object v3, p0, LH3/Q;->d:Ljava/lang/Boolean;

    if-nez v3, :cond_3

    if-nez v2, :cond_6

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_2
    iget-object v2, p0, LH3/Q;->e:LH3/D0;

    if-nez v2, :cond_4

    if-nez v1, :cond_6

    goto :goto_3

    :cond_4
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_3
    iget-object v1, p0, LH3/Q;->f:Ljava/util/List;

    if-nez v1, :cond_5

    if-nez v0, :cond_6

    goto :goto_4

    :cond_5
    invoke-interface {v1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_4
    iget v0, p0, LH3/Q;->g:I

    iget p1, p1, LH3/Q;->g:I

    if-ne v0, p1, :cond_6

    :goto_5
    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, LH3/Q;->a:LH3/S;

    invoke-virtual {v0}, LH3/S;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, LH3/Q;->b:Ljava/util/List;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_0
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, LH3/Q;->c:Ljava/util/List;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, LH3/Q;->d:Ljava/lang/Boolean;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, LH3/Q;->e:LH3/D0;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, LH3/Q;->f:Ljava/util/List;

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_4
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v1, p0, LH3/Q;->g:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Application{execution="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LH3/Q;->a:LH3/S;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customAttributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LH3/Q;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", internalKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LH3/Q;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", background="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LH3/Q;->d:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentProcessDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LH3/Q;->e:LH3/D0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appProcessDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LH3/Q;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uiOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LH3/Q;->g:I

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Lcom/google/android/material/datepicker/e;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
