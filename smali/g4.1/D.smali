.class public final Lg4/D;
.super LX4/c;


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public q:I

.field public final synthetic r:LT/s;


# direct methods
.method public constructor <init>(LT/s;LV4/d;)V
    .locals 0

    iput-object p1, p0, Lg4/D;->r:LT/s;

    invoke-direct {p0, p2}, LX4/c;-><init>(LV4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lg4/D;->b:Ljava/lang/Object;

    iget p1, p0, Lg4/D;->q:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lg4/D;->q:I

    iget-object p1, p0, Lg4/D;->r:LT/s;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LT/s;->a(Ljava/lang/Object;LV4/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
