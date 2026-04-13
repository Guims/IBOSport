.class public final Lp5/f;
.super LX4/c;


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public q:I

.field public final synthetic r:Lp5/g;

.field public s:Ljava/lang/Object;

.field public t:Lp5/c;


# direct methods
.method public constructor <init>(Lp5/g;LX4/c;)V
    .locals 0

    iput-object p1, p0, Lp5/f;->r:Lp5/g;

    invoke-direct {p0, p2}, LX4/c;-><init>(LV4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lp5/f;->b:Ljava/lang/Object;

    iget p1, p0, Lp5/f;->q:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lp5/f;->q:I

    iget-object p1, p0, Lp5/f;->r:Lp5/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lp5/g;->h(Lp5/c;LX4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
