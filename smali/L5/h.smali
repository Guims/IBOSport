.class public final LL5/h;
.super Le5/h;

# interfaces
.implements Ld5/p;


# instance fields
.field public final synthetic b:Le5/j;

.field public final synthetic q:J

.field public final synthetic r:Le5/l;

.field public final synthetic s:LK5/z;

.field public final synthetic t:Le5/l;

.field public final synthetic u:Le5/l;


# direct methods
.method public constructor <init>(Le5/j;JLe5/l;LK5/z;Le5/l;Le5/l;)V
    .locals 0

    iput-object p1, p0, LL5/h;->b:Le5/j;

    iput-wide p2, p0, LL5/h;->q:J

    iput-object p4, p0, LL5/h;->r:Le5/l;

    iput-object p5, p0, LL5/h;->s:LK5/z;

    iput-object p6, p0, LL5/h;->t:Le5/l;

    iput-object p7, p0, LL5/h;->u:Le5/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Le5/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_5

    iget-object p1, p0, LL5/h;->b:Le5/j;

    iget-boolean v2, p1, Le5/j;->b:Z

    if-nez v2, :cond_4

    iput-boolean p2, p1, Le5/j;->b:Z

    iget-wide p1, p0, LL5/h;->q:J

    cmp-long p1, v0, p1

    if-ltz p1, :cond_3

    iget-object p1, p0, LL5/h;->r:Le5/l;

    iget-wide v0, p1, Le5/l;->b:J

    const-wide v2, 0xffffffffL

    cmp-long p2, v0, v2

    iget-object v4, p0, LL5/h;->s:LK5/z;

    if-nez p2, :cond_0

    invoke-virtual {v4}, LK5/z;->h()J

    move-result-wide v0

    :cond_0
    iput-wide v0, p1, Le5/l;->b:J

    iget-object p1, p0, LL5/h;->t:Le5/l;

    iget-wide v0, p1, Le5/l;->b:J

    cmp-long p2, v0, v2

    const-wide/16 v0, 0x0

    if-nez p2, :cond_1

    invoke-virtual {v4}, LK5/z;->h()J

    move-result-wide v5

    goto :goto_0

    :cond_1
    move-wide v5, v0

    :goto_0
    iput-wide v5, p1, Le5/l;->b:J

    iget-object p1, p0, LL5/h;->u:Le5/l;

    iget-wide v5, p1, Le5/l;->b:J

    cmp-long p2, v5, v2

    if-nez p2, :cond_2

    invoke-virtual {v4}, LK5/z;->h()J

    move-result-wide v0

    :cond_2
    iput-wide v0, p1, Le5/l;->b:J

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "bad zip: zip64 extra too short"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "bad zip: zip64 extra repeated"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    sget-object p1, LS4/i;->a:LS4/i;

    return-object p1
.end method
