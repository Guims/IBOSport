.class public final Lp5/j;
.super LX4/c;


# instance fields
.field public b:Le5/m;

.field public synthetic q:Ljava/lang/Object;

.field public r:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lp5/j;->q:Ljava/lang/Object;

    iget p1, p0, Lp5/j;->r:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lp5/j;->r:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Lp5/u;->b(Lp5/b;Lp5/c;LX4/c;)Ljava/io/Serializable;

    move-result-object p1

    return-object p1
.end method
