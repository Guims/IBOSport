.class public final LW1/c;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ljava/lang/Class;

.field public final c:LW1/b;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;LW1/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW1/c;->a:Ljava/lang/Class;

    iput-object p2, p0, LW1/c;->b:Ljava/lang/Class;

    iput-object p3, p0, LW1/c;->c:LW1/b;

    return-void
.end method
