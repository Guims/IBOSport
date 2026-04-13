.class public final Lp5/h;
.super LX4/c;


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public q:I

.field public final synthetic r:LY1/c;

.field public s:LY1/c;

.field public t:Lp5/c;

.field public u:Lq5/k;


# direct methods
.method public constructor <init>(LY1/c;LX4/c;)V
    .locals 0

    iput-object p1, p0, Lp5/h;->r:LY1/c;

    invoke-direct {p0, p2}, LX4/c;-><init>(LV4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lp5/h;->b:Ljava/lang/Object;

    iget p1, p0, Lp5/h;->q:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lp5/h;->q:I

    iget-object p1, p0, Lp5/h;->r:LY1/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LY1/c;->h(Lp5/c;LX4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
