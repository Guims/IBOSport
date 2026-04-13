.class public final Lk4/i;
.super LX4/c;


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic q:Lk4/k;

.field public r:I


# direct methods
.method public constructor <init>(Lk4/k;LX4/c;)V
    .locals 0

    iput-object p1, p0, Lk4/i;->q:Lk4/k;

    invoke-direct {p0, p2}, LX4/c;-><init>(LV4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lk4/i;->b:Ljava/lang/Object;

    iget p1, p0, Lk4/i;->r:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lk4/i;->r:I

    iget-object p1, p0, Lk4/i;->q:Lk4/k;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lk4/k;->c(LX/g;Ljava/lang/Object;LX4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
