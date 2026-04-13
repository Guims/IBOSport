.class public final LD5/t;
.super Ljava/lang/Object;

# interfaces
.implements LK5/F;


# instance fields
.field public b:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public final u:LK5/i;


# direct methods
.method public constructor <init>(LK5/i;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD5/t;->u:LK5/i;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final read(LK5/g;J)J
    .locals 8

    const-string v0, "sink"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iget v0, p0, LD5/t;->s:I

    const-wide/16 v1, -0x1

    iget-object v3, p0, LD5/t;->u:LK5/i;

    if-nez v0, :cond_4

    iget v0, p0, LD5/t;->t:I

    int-to-long v4, v0

    invoke-interface {v3, v4, v5}, LK5/i;->skip(J)V

    const/4 v0, 0x0

    iput v0, p0, LD5/t;->t:I

    iget v0, p0, LD5/t;->q:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, LD5/t;->r:I

    invoke-static {v3}, Lx5/b;->q(LK5/i;)I

    move-result v1

    iput v1, p0, LD5/t;->s:I

    iput v1, p0, LD5/t;->b:I

    invoke-interface {v3}, LK5/i;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-interface {v3}, LK5/i;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, LD5/t;->q:I

    sget-object v2, LD5/u;->s:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, LD5/f;->a:LK5/j;

    iget v4, p0, LD5/t;->r:I

    iget v5, p0, LD5/t;->b:I

    iget v6, p0, LD5/t;->q:I

    const/4 v7, 0x1

    invoke-static {v7, v4, v5, v1, v6}, LD5/f;->a(ZIIII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v3}, LK5/i;->readInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, p0, LD5/t;->r:I

    const/16 v3, 0x9

    if-ne v1, v3, :cond_3

    if-ne v2, v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TYPE_CONTINUATION streamId changed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " != TYPE_CONTINUATION"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    int-to-long v4, v0

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-interface {v3, p1, p2, p3}, LK5/F;->read(LK5/g;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_5

    :goto_1
    return-wide v1

    :cond_5
    iget p3, p0, LD5/t;->s:I

    long-to-int v0, p1

    sub-int/2addr p3, v0

    iput p3, p0, LD5/t;->s:I

    return-wide p1
.end method

.method public final timeout()LK5/H;
    .locals 1

    iget-object v0, p0, LD5/t;->u:LK5/i;

    invoke-interface {v0}, LK5/F;->timeout()LK5/H;

    move-result-object v0

    return-object v0
.end method
