.class public final LH3/B;
.super LH3/O0;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:LH3/N0;

.field public final l:LH3/t0;

.field public final m:LH3/q0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LH3/N0;LH3/t0;LH3/q0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH3/B;->b:Ljava/lang/String;

    iput-object p2, p0, LH3/B;->c:Ljava/lang/String;

    iput p3, p0, LH3/B;->d:I

    iput-object p4, p0, LH3/B;->e:Ljava/lang/String;

    iput-object p5, p0, LH3/B;->f:Ljava/lang/String;

    iput-object p6, p0, LH3/B;->g:Ljava/lang/String;

    iput-object p7, p0, LH3/B;->h:Ljava/lang/String;

    iput-object p8, p0, LH3/B;->i:Ljava/lang/String;

    iput-object p9, p0, LH3/B;->j:Ljava/lang/String;

    iput-object p10, p0, LH3/B;->k:LH3/N0;

    iput-object p11, p0, LH3/B;->l:LH3/t0;

    iput-object p12, p0, LH3/B;->m:LH3/q0;

    return-void
.end method


# virtual methods
.method public final a()LH3/A;
    .locals 2

    new-instance v0, LH3/A;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, LH3/B;->b:Ljava/lang/String;

    iput-object v1, v0, LH3/A;->a:Ljava/lang/String;

    iget-object v1, p0, LH3/B;->c:Ljava/lang/String;

    iput-object v1, v0, LH3/A;->b:Ljava/lang/String;

    iget v1, p0, LH3/B;->d:I

    iput v1, v0, LH3/A;->c:I

    iget-object v1, p0, LH3/B;->e:Ljava/lang/String;

    iput-object v1, v0, LH3/A;->d:Ljava/lang/String;

    iget-object v1, p0, LH3/B;->f:Ljava/lang/String;

    iput-object v1, v0, LH3/A;->e:Ljava/lang/String;

    iget-object v1, p0, LH3/B;->g:Ljava/lang/String;

    iput-object v1, v0, LH3/A;->f:Ljava/lang/String;

    iget-object v1, p0, LH3/B;->h:Ljava/lang/String;

    iput-object v1, v0, LH3/A;->g:Ljava/lang/String;

    iget-object v1, p0, LH3/B;->i:Ljava/lang/String;

    iput-object v1, v0, LH3/A;->h:Ljava/lang/String;

    iget-object v1, p0, LH3/B;->j:Ljava/lang/String;

    iput-object v1, v0, LH3/A;->i:Ljava/lang/String;

    iget-object v1, p0, LH3/B;->k:LH3/N0;

    iput-object v1, v0, LH3/A;->j:LH3/N0;

    iget-object v1, p0, LH3/B;->l:LH3/t0;

    iput-object v1, v0, LH3/A;->k:LH3/t0;

    iget-object v1, p0, LH3/B;->m:LH3/q0;

    iput-object v1, v0, LH3/A;->l:LH3/q0;

    const/4 v1, 0x1

    iput-byte v1, v0, LH3/A;->m:B

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 10

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LH3/O0;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    check-cast p1, LH3/O0;

    check-cast p1, LH3/B;

    iget-object v1, p1, LH3/B;->m:LH3/q0;

    iget-object v3, p1, LH3/B;->l:LH3/t0;

    iget-object v4, p1, LH3/B;->k:LH3/N0;

    iget-object v5, p1, LH3/B;->h:Ljava/lang/String;

    iget-object v6, p1, LH3/B;->g:Ljava/lang/String;

    iget-object v7, p1, LH3/B;->f:Ljava/lang/String;

    iget-object v8, p1, LH3/B;->b:Ljava/lang/String;

    iget-object v9, p0, LH3/B;->b:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, LH3/B;->c:Ljava/lang/String;

    iget-object v9, p1, LH3/B;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget v8, p0, LH3/B;->d:I

    iget v9, p1, LH3/B;->d:I

    if-ne v8, v9, :cond_7

    iget-object v8, p0, LH3/B;->e:Ljava/lang/String;

    iget-object v9, p1, LH3/B;->e:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, LH3/B;->f:Ljava/lang/String;

    if-nez v8, :cond_1

    if-nez v7, :cond_7

    goto :goto_0

    :cond_1
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    :goto_0
    iget-object v7, p0, LH3/B;->g:Ljava/lang/String;

    if-nez v7, :cond_2

    if-nez v6, :cond_7

    goto :goto_1

    :cond_2
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :goto_1
    iget-object v6, p0, LH3/B;->h:Ljava/lang/String;

    if-nez v6, :cond_3

    if-nez v5, :cond_7

    goto :goto_2

    :cond_3
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :goto_2
    iget-object v5, p0, LH3/B;->i:Ljava/lang/String;

    iget-object v6, p1, LH3/B;->i:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, LH3/B;->j:Ljava/lang/String;

    iget-object p1, p1, LH3/B;->j:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, LH3/B;->k:LH3/N0;

    if-nez p1, :cond_4

    if-nez v4, :cond_7

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :goto_3
    iget-object p1, p0, LH3/B;->l:LH3/t0;

    if-nez p1, :cond_5

    if-nez v3, :cond_7

    goto :goto_4

    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :goto_4
    iget-object p1, p0, LH3/B;->m:LH3/q0;

    if-nez p1, :cond_6

    if-nez v1, :cond_7

    goto :goto_5

    :cond_6
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    :goto_5
    return v0

    :cond_7
    return v2
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, LH3/B;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, LH3/B;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, LH3/B;->d:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, LH3/B;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, LH3/B;->f:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, LH3/B;->g:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, LH3/B;->h:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, LH3/B;->i:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, LH3/B;->j:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, LH3/B;->k:LH3/N0;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, LH3/B;->l:LH3/t0;

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v1, p0, LH3/B;->m:LH3/q0;

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    xor-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CrashlyticsReport{sdkVersion="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LH3/B;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gmpAppId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LH3/B;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", platform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LH3/B;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", installationUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LH3/B;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", firebaseInstallationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LH3/B;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", firebaseAuthenticationToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LH3/B;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appQualitySessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LH3/B;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", buildVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LH3/B;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", displayVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LH3/B;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LH3/B;->k:LH3/N0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ndkPayload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LH3/B;->l:LH3/t0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appExitInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LH3/B;->m:LH3/q0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
