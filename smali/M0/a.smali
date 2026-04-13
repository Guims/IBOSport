.class public final LM0/a;
.super Ljava/lang/Object;

# interfaces
.implements LI0/q;


# instance fields
.field public final synthetic a:I

.field public final b:LI0/q;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const/4 v0, 0x2

    iput v0, p0, LM0/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    new-instance p1, LI0/H;

    const/4 v0, 0x2

    const-string v1, "image/jpeg"

    const v2, 0xffd8

    invoke-direct {p1, v1, v2, v0}, LI0/H;-><init>(Ljava/lang/String;II)V

    iput-object p1, p0, LM0/a;->b:LI0/q;

    goto :goto_0

    :cond_0
    new-instance p1, LQ0/a;

    invoke-direct {p1}, LQ0/a;-><init>()V

    iput-object p1, p0, LM0/a;->b:LI0/q;

    :goto_0
    return-void
.end method

.method public constructor <init>(IB)V
    .locals 2

    iput p1, p0, LM0/a;->a:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, LI0/H;

    const/4 p2, 0x2

    const-string v0, "image/bmp"

    const/16 v1, 0x424d

    invoke-direct {p1, v0, v1, p2}, LI0/H;-><init>(Ljava/lang/String;II)V

    iput-object p1, p0, LM0/a;->b:LI0/q;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, LI0/H;

    const/4 p2, 0x2

    const-string v0, "image/png"

    const v1, 0x8950

    invoke-direct {p1, v0, v1, p2}, LI0/H;-><init>(Ljava/lang/String;II)V

    iput-object p1, p0, LM0/a;->b:LI0/q;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
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


# virtual methods
.method public final b(LI0/r;)Z
    .locals 1

    iget v0, p0, LM0/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/a;->b:LI0/q;

    invoke-interface {v0, p1}, LI0/q;->b(LI0/r;)Z

    move-result p1

    return p1

    :pswitch_0
    iget-object v0, p0, LM0/a;->b:LI0/q;

    check-cast v0, LI0/H;

    invoke-virtual {v0, p1}, LI0/H;->b(LI0/r;)Z

    move-result p1

    return p1

    :pswitch_1
    iget-object v0, p0, LM0/a;->b:LI0/q;

    check-cast v0, LI0/H;

    invoke-virtual {v0, p1}, LI0/H;->b(LI0/r;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(LI0/r;LI0/D;)I
    .locals 1

    iget v0, p0, LM0/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/a;->b:LI0/q;

    invoke-interface {v0, p1, p2}, LI0/q;->e(LI0/r;LI0/D;)I

    move-result p1

    return p1

    :pswitch_0
    iget-object v0, p0, LM0/a;->b:LI0/q;

    check-cast v0, LI0/H;

    invoke-virtual {v0, p1, p2}, LI0/H;->e(LI0/r;LI0/D;)I

    move-result p1

    return p1

    :pswitch_1
    iget-object v0, p0, LM0/a;->b:LI0/q;

    check-cast v0, LI0/H;

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

    iget v0, p0, LM0/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/a;->b:LI0/q;

    invoke-interface {v0, p1, p2, p3, p4}, LI0/q;->f(JJ)V

    return-void

    :pswitch_0
    iget-object v0, p0, LM0/a;->b:LI0/q;

    check-cast v0, LI0/H;

    invoke-virtual {v0, p1, p2, p3, p4}, LI0/H;->f(JJ)V

    return-void

    :pswitch_1
    iget-object v0, p0, LM0/a;->b:LI0/q;

    check-cast v0, LI0/H;

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

    iget v0, p0, LM0/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/a;->b:LI0/q;

    invoke-interface {v0, p1}, LI0/q;->k(LI0/s;)V

    return-void

    :pswitch_0
    iget-object v0, p0, LM0/a;->b:LI0/q;

    check-cast v0, LI0/H;

    invoke-virtual {v0, p1}, LI0/H;->k(LI0/s;)V

    return-void

    :pswitch_1
    iget-object v0, p0, LM0/a;->b:LI0/q;

    check-cast v0, LI0/H;

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

    iget v0, p0, LM0/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LM0/a;->b:LI0/q;

    invoke-interface {v0}, LI0/q;->release()V

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
