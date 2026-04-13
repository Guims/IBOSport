.class public final Ll0/h;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lp3/H;

.field public final b:[I


# direct methods
.method public constructor <init>(Lp3/Y;[II)V
    .locals 0

    packed-switch p3, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lp3/H;->j(Ljava/util/Collection;)Lp3/H;

    move-result-object p1

    iput-object p1, p0, Ll0/h;->a:Lp3/H;

    iput-object p2, p0, Ll0/h;->b:[I

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lp3/H;->j(Ljava/util/Collection;)Lp3/H;

    move-result-object p1

    iput-object p1, p0, Ll0/h;->a:Lp3/H;

    iput-object p2, p0, Ll0/h;->b:[I

    return-void

    :pswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lp3/H;->j(Ljava/util/Collection;)Lp3/H;

    move-result-object p1

    iput-object p1, p0, Ll0/h;->a:Lp3/H;

    iput-object p2, p0, Ll0/h;->b:[I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
