.class public final LT/z;
.super LX4/c;


# instance fields
.field public b:LT/I;

.field public q:I

.field public synthetic r:Ljava/lang/Object;

.field public final synthetic s:LT/I;

.field public t:I


# direct methods
.method public constructor <init>(LT/I;LX4/c;)V
    .locals 0

    iput-object p1, p0, LT/z;->s:LT/I;

    invoke-direct {p0, p2}, LX4/c;-><init>(LV4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LT/z;->r:Ljava/lang/Object;

    iget p1, p0, LT/z;->t:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LT/z;->t:I

    iget-object p1, p0, LT/z;->s:LT/I;

    invoke-virtual {p1, p0}, LT/I;->h(LX4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
