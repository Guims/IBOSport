.class public final Lk4/g;
.super LX4/c;


# instance fields
.field public b:Lk4/h;

.field public synthetic q:Ljava/lang/Object;

.field public final synthetic r:Lk4/h;

.field public s:I


# direct methods
.method public constructor <init>(Lk4/h;LX4/c;)V
    .locals 0

    iput-object p1, p0, Lk4/g;->r:Lk4/h;

    invoke-direct {p0, p2}, LX4/c;-><init>(LV4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lk4/g;->q:Ljava/lang/Object;

    iget p1, p0, Lk4/g;->s:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lk4/g;->s:I

    iget-object p1, p0, Lk4/g;->r:Lk4/h;

    invoke-virtual {p1, p0}, Lk4/h;->b(LX4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
