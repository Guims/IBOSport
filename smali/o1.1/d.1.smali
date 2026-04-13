.class public final Lo1/d;
.super Ljava/lang/Object;

# interfaces
.implements Lo1/j;


# instance fields
.field public final a:LI0/N;

.field public final b:Lk0/u;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public e:Ljava/lang/String;

.field public f:LI0/L;

.field public g:I

.field public h:I

.field public i:Z

.field public j:J

.field public k:Landroidx/media3/common/Format;

.field public l:I

.field public m:J


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LI0/N;

    const/16 v1, 0x10

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, LI0/N;-><init>([BI)V

    iput-object v0, p0, Lo1/d;->a:LI0/N;

    new-instance v1, Lk0/u;

    iget-object v0, v0, LI0/N;->d:[B

    invoke-direct {v1, v0}, Lk0/u;-><init>([B)V

    iput-object v1, p0, Lo1/d;->b:Lk0/u;

    const/4 v0, 0x0

    iput v0, p0, Lo1/d;->g:I

    iput v0, p0, Lo1/d;->h:I

    iput-boolean v0, p0, Lo1/d;->i:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lo1/d;->m:J

    iput-object p1, p0, Lo1/d;->c:Ljava/lang/String;

    iput p2, p0, Lo1/d;->d:I

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lo1/d;->g:I

    iput v0, p0, Lo1/d;->h:I

    iput-boolean v0, p0, Lo1/d;->i:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lo1/d;->m:J

    return-void
.end method

.method public final c(Lk0/u;)V
    .locals 12

    iget-object v0, p0, Lo1/d;->f:LI0/L;

    invoke-static {v0}, Lk0/c;->k(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lk0/u;->a()I

    move-result v0

    if-lez v0, :cond_d

    iget v0, p0, Lo1/d;->g:I

    iget-object v1, p0, Lo1/d;->b:Lk0/u;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lk0/u;->a()I

    move-result v0

    iget v1, p0, Lo1/d;->l:I

    iget v2, p0, Lo1/d;->h:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lo1/d;->f:LI0/L;

    invoke-interface {v1, p1, v0}, LI0/L;->sampleData(Lk0/u;I)V

    iget v1, p0, Lo1/d;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Lo1/d;->h:I

    iget v0, p0, Lo1/d;->l:I

    if-ne v1, v0, :cond_0

    iget-wide v0, p0, Lo1/d;->m:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v5

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    invoke-static {v3}, Lk0/c;->j(Z)V

    iget-object v5, p0, Lo1/d;->f:LI0/L;

    iget-wide v6, p0, Lo1/d;->m:J

    iget v9, p0, Lo1/d;->l:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    invoke-interface/range {v5 .. v11}, LI0/L;->sampleMetadata(JIIILI0/K;)V

    iget-wide v0, p0, Lo1/d;->m:J

    iget-wide v2, p0, Lo1/d;->j:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo1/d;->m:J

    iput v4, p0, Lo1/d;->g:I

    goto :goto_0

    :cond_3
    iget-object v0, v1, Lk0/u;->a:[B

    invoke-virtual {p1}, Lk0/u;->a()I

    move-result v3

    iget v5, p0, Lo1/d;->h:I

    const/16 v6, 0x10

    rsub-int/lit8 v5, v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v5, p0, Lo1/d;->h:I

    invoke-virtual {p1, v0, v5, v3}, Lk0/u;->e([BII)V

    iget v0, p0, Lo1/d;->h:I

    add-int/2addr v0, v3

    iput v0, p0, Lo1/d;->h:I

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lo1/d;->a:LI0/N;

    invoke-virtual {v0, v4}, LI0/N;->q(I)V

    invoke-static {v0}, LI0/e;->b(LI0/N;)LE2/d;

    move-result-object v0

    iget v3, v0, LE2/d;->a:I

    iget-object v5, p0, Lo1/d;->k:Landroidx/media3/common/Format;

    const-string v7, "audio/ac4"

    if-eqz v5, :cond_4

    iget v8, v5, Landroidx/media3/common/Format;->channelCount:I

    if-ne v2, v8, :cond_4

    iget v8, v5, Landroidx/media3/common/Format;->sampleRate:I

    if-ne v3, v8, :cond_4

    iget-object v5, v5, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    new-instance v5, Landroidx/media3/common/Format$Builder;

    invoke-direct {v5}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object v8, p0, Lo1/d;->e:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    iget-object v5, p0, Lo1/d;->c:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    iget v5, p0, Lo1/d;->d:I

    invoke-virtual {v3, v5}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v3

    iput-object v3, p0, Lo1/d;->k:Landroidx/media3/common/Format;

    iget-object v5, p0, Lo1/d;->f:LI0/L;

    invoke-interface {v5, v3}, LI0/L;->format(Landroidx/media3/common/Format;)V

    :cond_5
    iget v3, v0, LE2/d;->b:I

    iput v3, p0, Lo1/d;->l:I

    iget v0, v0, LE2/d;->c:I

    int-to-long v7, v0

    const-wide/32 v9, 0xf4240

    mul-long/2addr v7, v9

    iget-object v0, p0, Lo1/d;->k:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->sampleRate:I

    int-to-long v9, v0

    div-long/2addr v7, v9

    iput-wide v7, p0, Lo1/d;->j:J

    invoke-virtual {v1, v4}, Lk0/u;->G(I)V

    iget-object v0, p0, Lo1/d;->f:LI0/L;

    invoke-interface {v0, v1, v6}, LI0/L;->sampleData(Lk0/u;I)V

    iput v2, p0, Lo1/d;->g:I

    goto/16 :goto_0

    :cond_6
    :goto_2
    invoke-virtual {p1}, Lk0/u;->a()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lo1/d;->i:Z

    const/16 v5, 0xac

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lk0/u;->u()I

    move-result v0

    if-ne v0, v5, :cond_7

    move v0, v3

    goto :goto_3

    :cond_7
    move v0, v4

    :goto_3
    iput-boolean v0, p0, Lo1/d;->i:Z

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Lk0/u;->u()I

    move-result v0

    if-ne v0, v5, :cond_9

    move v5, v3

    goto :goto_4

    :cond_9
    move v5, v4

    :goto_4
    iput-boolean v5, p0, Lo1/d;->i:Z

    const/16 v5, 0x40

    const/16 v6, 0x41

    if-eq v0, v5, :cond_a

    if-ne v0, v6, :cond_6

    :cond_a
    if-ne v0, v6, :cond_b

    move v0, v3

    goto :goto_5

    :cond_b
    move v0, v4

    :goto_5
    iput v3, p0, Lo1/d;->g:I

    iget-object v1, v1, Lk0/u;->a:[B

    const/16 v7, -0x54

    aput-byte v7, v1, v4

    if-eqz v0, :cond_c

    move v5, v6

    :cond_c
    int-to-byte v0, v5

    aput-byte v0, v1, v3

    iput v2, p0, Lo1/d;->h:I

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method public final d(Z)V
    .locals 0

    return-void
.end method

.method public final e(IJ)V
    .locals 0

    iput-wide p2, p0, Lo1/d;->m:J

    return-void
.end method

.method public final f(LI0/s;Lo1/K;)V
    .locals 1

    invoke-virtual {p2}, Lo1/K;->a()V

    invoke-virtual {p2}, Lo1/K;->b()V

    iget-object v0, p2, Lo1/K;->e:Ljava/lang/String;

    iput-object v0, p0, Lo1/d;->e:Ljava/lang/String;

    invoke-virtual {p2}, Lo1/K;->b()V

    iget p2, p2, Lo1/K;->d:I

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, LI0/s;->track(II)LI0/L;

    move-result-object p1

    iput-object p1, p0, Lo1/d;->f:LI0/L;

    return-void
.end method
