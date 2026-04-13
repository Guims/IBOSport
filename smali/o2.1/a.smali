.class public final Lo2/a;
.super Ljava/lang/Object;

# interfaces
.implements Lo2/b;


# static fields
.field public static final f:Ljava/util/logging/Logger;


# instance fields
.field public final a:LJ/l;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lk2/d;

.field public final d:Lq2/d;

.field public final e:Lr2/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lj2/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo2/a;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lk2/d;LJ/l;Lq2/d;Lr2/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2/a;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lo2/a;->c:Lk2/d;

    iput-object p3, p0, Lo2/a;->a:LJ/l;

    iput-object p4, p0, Lo2/a;->d:Lq2/d;

    iput-object p5, p0, Lo2/a;->e:Lr2/c;

    return-void
.end method
