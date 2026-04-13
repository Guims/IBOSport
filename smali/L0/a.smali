.class public final LL0/a;
.super Ljava/lang/Object;

# interfaces
.implements LI0/q;


# instance fields
.field public final synthetic a:I

.field public final b:Lk0/u;

.field public final c:LI0/H;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    iput p1, p0, LL0/a;->a:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lk0/u;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lk0/u;-><init>(I)V

    iput-object p1, p0, LL0/a;->b:Lk0/u;

    new-instance p1, LI0/H;

    const/4 v0, -0x1

    const-string v1, "image/avif"

    invoke-direct {p1, v1, v0, v0}, LI0/H;-><init>(Ljava/lang/String;II)V

    iput-object p1, p0, LL0/a;->c:LI0/H;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lk0/u;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lk0/u;-><init>(I)V

    iput-object p1, p0, LL0/a;->b:Lk0/u;

    new-instance p1, LI0/H;

    const/4 v0, -0x1

    const-string v1, "image/webp"

    invoke-direct {p1, v1, v0, v0}, LI0/H;-><init>(Ljava/lang/String;II)V

    iput-object p1, p0, LL0/a;->c:LI0/H;

    return-void

    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lk0/u;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lk0/u;-><init>(I)V

    iput-object p1, p0, LL0/a;->b:Lk0/u;

    new-instance p1, LI0/H;

    const/4 v0, -0x1

    const-string v1, "image/heif"

    invoke-direct {p1, v1, v0, v0}, LI0/H;-><init>(Ljava/lang/String;II)V

    iput-object p1, p0, LL0/a;->c:LI0/H;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a()V
    .locals 0

    return-void
.end method

.method private final c()V
    .locals 0

    return-void
.end method

.method private final d()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final b(LI0/r;)Z
    .locals 8

    iget v0, p0, LL0/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LL0/a;->b:Lk0/u;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lk0/u;->D(I)V

    iget-object v2, v0, Lk0/u;->a:[B

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3, v1}, LI0/r;->o([BII)V

    invoke-virtual {v0}, Lk0/u;->w()J

    move-result-wide v4

    const-wide/32 v6, 0x52494646

    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, LI0/r;->f(I)V

    invoke-virtual {v0, v1}, Lk0/u;->D(I)V

    iget-object v2, v0, Lk0/u;->a:[B

    invoke-interface {p1, v2, v3, v1}, LI0/r;->o([BII)V

    invoke-virtual {v0}, Lk0/u;->w()J

    move-result-wide v0

    const-wide/32 v4, 0x57454250

    cmp-long p1, v0, v4

    if-nez p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    :goto_0
    return v3

    :pswitch_0
    const/4 v0, 0x4

    invoke-interface {p1, v0}, LI0/r;->f(I)V

    iget-object v1, p0, LL0/a;->b:Lk0/u;

    invoke-virtual {v1, v0}, Lk0/u;->D(I)V

    iget-object v2, v1, Lk0/u;->a:[B

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3, v0}, LI0/r;->o([BII)V

    invoke-virtual {v1}, Lk0/u;->w()J

    move-result-wide v4

    const v2, 0x66747970

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-nez v2, :cond_2

    invoke-virtual {v1, v0}, Lk0/u;->D(I)V

    iget-object v2, v1, Lk0/u;->a:[B

    invoke-interface {p1, v2, v3, v0}, LI0/r;->o([BII)V

    invoke-virtual {v1}, Lk0/u;->w()J

    move-result-wide v0

    const p1, 0x68656963

    int-to-long v4, p1

    cmp-long p1, v0, v4

    if-nez p1, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3

    :pswitch_1
    const/4 v0, 0x4

    invoke-interface {p1, v0}, LI0/r;->f(I)V

    iget-object v1, p0, LL0/a;->b:Lk0/u;

    invoke-virtual {v1, v0}, Lk0/u;->D(I)V

    iget-object v2, v1, Lk0/u;->a:[B

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3, v0}, LI0/r;->o([BII)V

    invoke-virtual {v1}, Lk0/u;->w()J

    move-result-wide v4

    const v2, 0x66747970

    int-to-long v6, v2

    cmp-long v2, v4, v6

    if-nez v2, :cond_3

    invoke-virtual {v1, v0}, Lk0/u;->D(I)V

    iget-object v2, v1, Lk0/u;->a:[B

    invoke-interface {p1, v2, v3, v0}, LI0/r;->o([BII)V

    invoke-virtual {v1}, Lk0/u;->w()J

    move-result-wide v0

    const p1, 0x61766966

    int-to-long v4, p1

    cmp-long p1, v0, v4

    if-nez p1, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(LI0/r;LI0/D;)I
    .locals 1

    iget v0, p0, LL0/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LL0/a;->c:LI0/H;

    invoke-virtual {v0, p1, p2}, LI0/H;->e(LI0/r;LI0/D;)I

    move-result p1

    return p1

    :pswitch_0
    iget-object v0, p0, LL0/a;->c:LI0/H;

    invoke-virtual {v0, p1, p2}, LI0/H;->e(LI0/r;LI0/D;)I

    move-result p1

    return p1

    :pswitch_1
    iget-object v0, p0, LL0/a;->c:LI0/H;

    invoke-virtual {v0, p1, p2}, LI0/H;->e(LI0/r;LI0/D;)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(JJ)V
    .locals 1

    iget v0, p0, LL0/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LL0/a;->c:LI0/H;

    invoke-virtual {v0, p1, p2, p3, p4}, LI0/H;->f(JJ)V

    return-void

    :pswitch_0
    iget-object v0, p0, LL0/a;->c:LI0/H;

    invoke-virtual {v0, p1, p2, p3, p4}, LI0/H;->f(JJ)V

    return-void

    :pswitch_1
    iget-object v0, p0, LL0/a;->c:LI0/H;

    invoke-virtual {v0, p1, p2, p3, p4}, LI0/H;->f(JJ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(LI0/s;)V
    .locals 1

    iget v0, p0, LL0/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LL0/a;->c:LI0/H;

    invoke-virtual {v0, p1}, LI0/H;->k(LI0/s;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LL0/a;->c:LI0/H;

    invoke-virtual {v0, p1}, LI0/H;->k(LI0/s;)V

    return-void

    :pswitch_1
    iget-object v0, p0, LL0/a;->c:LI0/H;

    invoke-virtual {v0, p1}, LI0/H;->k(LI0/s;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final release()V
    .locals 1

    iget v0, p0, LL0/a;->a:I

    return-void
.end method
