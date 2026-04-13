.class public final Lp5/d;
.super LX4/c;


# instance fields
.field public b:Lp5/c;

.field public q:Lo5/o;

.field public r:Lo5/a;

.field public s:Z

.field public synthetic t:Ljava/lang/Object;

.field public u:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lp5/d;->t:Ljava/lang/Object;

    iget p1, p0, Lp5/d;->u:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lp5/d;->u:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-static {p1, p1, v0, p0}, Lp5/u;->c(Lp5/c;Lo5/m;ZLX4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
