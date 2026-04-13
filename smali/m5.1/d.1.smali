.class public final Lm5/d;
.super Lm5/H;


# instance fields
.field public final y:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    invoke-direct {p0}, Lm5/H;-><init>()V

    iput-object p1, p0, Lm5/d;->y:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lm5/d;->y:Ljava/lang/Thread;

    return-object v0
.end method
