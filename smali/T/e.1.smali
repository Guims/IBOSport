.class public final LT/e;
.super LX4/c;


# instance fields
.field public b:Ljava/io/Serializable;

.field public q:Ljava/util/Iterator;

.field public synthetic r:Ljava/lang/Object;

.field public s:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LT/e;->r:Ljava/lang/Object;

    iget p1, p0, LT/e;->s:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LT/e;->s:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, LH3/u0;->a(Ljava/util/List;LT/k;LX4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
