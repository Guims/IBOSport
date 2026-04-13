.class public final LT/O;
.super LX4/c;


# instance fields
.field public b:Ljava/lang/Object;

.field public q:Lu5/d;

.field public synthetic r:Ljava/lang/Object;

.field public final synthetic s:LT/S;

.field public t:I


# direct methods
.method public constructor <init>(LT/S;LX4/c;)V
    .locals 0

    iput-object p1, p0, LT/O;->s:LT/S;

    invoke-direct {p0, p2}, LX4/c;-><init>(LV4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LT/O;->r:Ljava/lang/Object;

    iget p1, p0, LT/O;->t:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LT/O;->t:I

    iget-object p1, p0, LT/O;->s:LT/S;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LT/S;->b(Ld5/l;LX4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
