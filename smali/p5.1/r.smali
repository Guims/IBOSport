.class public final Lp5/r;
.super LX4/c;


# instance fields
.field public b:Le5/m;

.field public q:LT/y;

.field public synthetic r:Ljava/lang/Object;

.field public s:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lp5/r;->r:Ljava/lang/Object;

    iget p1, p0, Lp5/r;->s:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lp5/r;->s:I

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lp5/u;->d(Lp5/b;LX4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
