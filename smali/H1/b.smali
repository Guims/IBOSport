.class public final LH1/b;
.super Ljava/lang/Object;

# interfaces
.implements LO1/s;


# static fields
.field public static volatile c:Lw5/y;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, LH1/b;->a:I

    packed-switch p1, :pswitch_data_0

    sget-object p1, LH1/b;->c:Lw5/y;

    if-nez p1, :cond_1

    const-class p1, LH1/b;

    monitor-enter p1

    :try_start_0
    sget-object v0, LH1/b;->c:Lw5/y;

    if-nez v0, :cond_0

    new-instance v0, Lw5/y;

    invoke-direct {v0}, Lw5/y;-><init>()V

    sput-object v0, LH1/b;->c:Lw5/y;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    sget-object p1, LH1/b;->c:Lw5/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH1/b;->b:Ljava/lang/Object;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, LL2/o;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, LL2/o;-><init>(I)V

    iput-object p1, p0, LH1/b;->b:Ljava/lang/Object;

    return-void

    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, LO1/c;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, LO1/c;-><init>(I)V

    iput-object p1, p0, LH1/b;->b:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(LO1/x;)LO1/r;
    .locals 2

    iget p1, p0, LH1/b;->a:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, LP1/a;

    iget-object v0, p0, LH1/b;->b:Ljava/lang/Object;

    check-cast v0, LL2/o;

    invoke-direct {p1, v0}, LP1/a;-><init>(LL2/o;)V

    return-object p1

    :pswitch_0
    new-instance p1, LH1/c;

    iget-object v0, p0, LH1/b;->b:Ljava/lang/Object;

    check-cast v0, LO1/c;

    const/4 v1, 0x2

    invoke-direct {p1, v1, v0}, LH1/c;-><init>(ILjava/lang/Object;)V

    return-object p1

    :pswitch_1
    new-instance p1, LH1/c;

    iget-object v0, p0, LH1/b;->b:Ljava/lang/Object;

    check-cast v0, Lw5/d;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, LH1/c;-><init>(ILjava/lang/Object;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
