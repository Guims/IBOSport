.class public final LH3/J;
.super LH3/N0;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:Ljava/lang/Long;

.field public final f:Z

.field public final g:LH3/v0;

.field public final h:LH3/M0;

.field public final i:LH3/L0;

.field public final j:LH3/w0;

.field public final k:Ljava/util/List;

.field public final l:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZLH3/v0;LH3/M0;LH3/L0;LH3/w0;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH3/J;->a:Ljava/lang/String;

    iput-object p2, p0, LH3/J;->b:Ljava/lang/String;

    iput-object p3, p0, LH3/J;->c:Ljava/lang/String;

    iput-wide p4, p0, LH3/J;->d:J

    iput-object p6, p0, LH3/J;->e:Ljava/lang/Long;

    iput-boolean p7, p0, LH3/J;->f:Z

    iput-object p8, p0, LH3/J;->g:LH3/v0;

    iput-object p9, p0, LH3/J;->h:LH3/M0;

    iput-object p10, p0, LH3/J;->i:LH3/L0;

    iput-object p11, p0, LH3/J;->j:LH3/w0;

    iput-object p12, p0, LH3/J;->k:Ljava/util/List;

    iput p13, p0, LH3/J;->l:I

    return-void
.end method


# virtual methods
.method public final a()LH3/I;
    .locals 3

    new-instance v0, LH3/I;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, LH3/J;->a:Ljava/lang/String;

    iput-object v1, v0, LH3/I;->a:Ljava/lang/String;

    iget-object v1, p0, LH3/J;->b:Ljava/lang/String;

    iput-object v1, v0, LH3/I;->b:Ljava/lang/String;

    iget-object v1, p0, LH3/J;->c:Ljava/lang/String;

    iput-object v1, v0, LH3/I;->c:Ljava/lang/String;

    iget-wide v1, p0, LH3/J;->d:J

    iput-wide v1, v0, LH3/I;->d:J

    iget-object v1, p0, LH3/J;->e:Ljava/lang/Long;

    iput-object v1, v0, LH3/I;->e:Ljava/lang/Long;

    iget-boolean v1, p0, LH3/J;->f:Z

    iput-boolean v1, v0, LH3/I;->f:Z

    iget-object v1, p0, LH3/J;->g:LH3/v0;

    iput-object v1, v0, LH3/I;->g:LH3/v0;

    iget-object v1, p0, LH3/J;->h:LH3/M0;

    iput-object v1, v0, LH3/I;->h:LH3/M0;

    iget-object v1, p0, LH3/J;->i:LH3/L0;

    iput-object v1, v0, LH3/I;->i:LH3/L0;

    iget-object v1, p0, LH3/J;->j:LH3/w0;

    iput-object v1, v0, LH3/I;->j:LH3/w0;

    iget-object v1, p0, LH3/J;->k:Ljava/util/List;

    iput-object v1, v0, LH3/I;->k:Ljava/util/List;

    iget v1, p0, LH3/J;->l:I

    iput v1, v0, LH3/I;->l:I

    const/4 v1, 0x7

    iput-byte v1, v0, LH3/I;->m:B

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 11

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LH3/N0;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    check-cast p1, LH3/N0;

    check-cast p1, LH3/J;

    iget-object v1, p1, LH3/J;->k:Ljava/util/List;

    iget-object v3, p1, LH3/J;->j:LH3/w0;

    iget-object v4, p1, LH3/J;->i:LH3/L0;

    iget-object v5, p1, LH3/J;->h:LH3/M0;

    iget-object v6, p1, LH3/J;->e:Ljava/lang/Long;

    iget-object v7, p1, LH3/J;->c:Ljava/lang/String;

    iget-object v8, p1, LH3/J;->a:Ljava/lang/String;

    iget-object v9, p0, LH3/J;->a:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, LH3/J;->b:Ljava/lang/String;

    iget-object v9, p1, LH3/J;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, LH3/J;->c:Ljava/lang/String;

    if-nez v8, :cond_1

    if-nez v7, :cond_7

    goto :goto_0

    :cond_1
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    :goto_0
    iget-wide v7, p0, LH3/J;->d:J

    iget-wide v9, p1, LH3/J;->d:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_7

    iget-object v7, p0, LH3/J;->e:Ljava/lang/Long;

    if-nez v7, :cond_2

    if-nez v6, :cond_7

    goto :goto_1

    :cond_2
    invoke-virtual {v7, v6}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :goto_1
    iget-boolean v6, p0, LH3/J;->f:Z

    iget-boolean v7, p1, LH3/J;->f:Z

    if-ne v6, v7, :cond_7

    iget-object v6, p0, LH3/J;->g:LH3/v0;

    iget-object v7, p1, LH3/J;->g:LH3/v0;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, LH3/J;->h:LH3/M0;

    if-nez v6, :cond_3

    if-nez v5, :cond_7

    goto :goto_2

    :cond_3
    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :goto_2
    iget-object v5, p0, LH3/J;->i:LH3/L0;

    if-nez v5, :cond_4

    if-nez v4, :cond_7

    goto :goto_3

    :cond_4
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_3
    iget-object v4, p0, LH3/J;->j:LH3/w0;

    if-nez v4, :cond_5

    if-nez v3, :cond_7

    goto :goto_4

    :cond_5
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_4
    iget-object v3, p0, LH3/J;->k:Ljava/util/List;

    if-nez v3, :cond_6

    if-nez v1, :cond_7

    goto :goto_5

    :cond_6
    invoke-interface {v3, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_5
    iget v1, p0, LH3/J;->l:I

    iget p1, p1, LH3/J;->l:I

    if-ne v1, p1, :cond_7

    return v0

    :cond_7
    return v2
.end method

.method public final hashCode()I
    .locals 8

    iget-object v0, p0, LH3/J;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, LH3/J;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, LH3/J;->c:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    const/16 v3, 0x20

    iget-wide v4, p0, LH3/J;->d:J

    ushr-long v6, v4, v3

    xor-long v3, v6, v4

    long-to-int v3, v3

    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, LH3/J;->e:Ljava/lang/Long;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, LH3/J;->f:Z

    if-eqz v3, :cond_2

    const/16 v3, 0x4cf

    goto :goto_2

    :cond_2
    const/16 v3, 0x4d5

    :goto_2
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, LH3/J;->g:LH3/v0;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, LH3/J;->h:LH3/M0;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, LH3/J;->i:LH3/L0;

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, LH3/J;->j:LH3/w0;

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, LH3/J;->k:Ljava/util/List;

    if-nez v3, :cond_6

    goto :goto_6

    :cond_6
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_6
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v1, p0, LH3/J;->l:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Session{generator="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LH3/J;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", identifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LH3/J;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appQualitySessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LH3/J;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, LH3/J;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LH3/J;->e:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", crashed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, LH3/J;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LH3/J;->g:LH3/v0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LH3/J;->h:LH3/M0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", os="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LH3/J;->i:LH3/L0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LH3/J;->j:LH3/w0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", events="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LH3/J;->k:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", generatorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LH3/J;->l:I

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Lcom/google/android/material/datepicker/e;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
