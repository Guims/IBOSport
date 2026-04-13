.class public abstract Lio/realm/internal/RealmNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation build Lio/realm/internal/Keep;
.end annotation


# instance fields
.field private finishedSendingNotificationsCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final onChangeCallBack:Lio/realm/internal/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/internal/m;"
        }
    .end annotation
.end field

.field private realmObserverPairs:Lio/realm/internal/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/internal/o;"
        }
    .end annotation
.end field

.field private sharedRealm:Lio/realm/internal/OsSharedRealm;

.field private startSendingNotificationsCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private transactionCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/realm/internal/OsSharedRealm;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/realm/internal/o;

    invoke-direct {v0}, Lio/realm/internal/o;-><init>()V

    iput-object v0, p0, Lio/realm/internal/RealmNotifier;->realmObserverPairs:Lio/realm/internal/o;

    new-instance v0, Lio/realm/internal/i;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lio/realm/internal/i;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lio/realm/internal/RealmNotifier;->onChangeCallBack:Lio/realm/internal/m;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/RealmNotifier;->transactionCallbacks:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/RealmNotifier;->startSendingNotificationsCallbacks:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/internal/RealmNotifier;->finishedSendingNotificationsCallbacks:Ljava/util/List;

    iput-object p1, p0, Lio/realm/internal/RealmNotifier;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    return-void
.end method

.method public static synthetic access$000(Lio/realm/internal/RealmNotifier;)Lio/realm/internal/OsSharedRealm;
    .locals 0

    iget-object p0, p0, Lio/realm/internal/RealmNotifier;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    return-object p0
.end method

.method private removeAllChangeListeners()V
    .locals 2

    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->realmObserverPairs:Lio/realm/internal/o;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/realm/internal/o;->b:Z

    iget-object v0, v0, Lio/realm/internal/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public addBeginSendingNotificationsCallback(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->startSendingNotificationsCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addChangeListener(Ljava/lang/Object;Lio/realm/H;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lio/realm/H;",
            ")V"
        }
    .end annotation

    new-instance v0, Lio/realm/internal/x;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lio/realm/internal/RealmNotifier;->realmObserverPairs:Lio/realm/internal/o;

    invoke-virtual {p1, v0}, Lio/realm/internal/o;->a(Lio/realm/internal/n;)V

    return-void
.end method

.method public addFinishedSendingNotificationsCallback(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->finishedSendingNotificationsCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTransactionCallback(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->transactionCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public beforeNotify()V
    .locals 1

    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->sharedRealm:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->invalidateIterators()V

    return-void
.end method

.method public close()V
    .locals 1

    invoke-direct {p0}, Lio/realm/internal/RealmNotifier;->removeAllChangeListeners()V

    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->startSendingNotificationsCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->finishedSendingNotificationsCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public didChange()V
    .locals 2

    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->realmObserverPairs:Lio/realm/internal/o;

    iget-object v1, p0, Lio/realm/internal/RealmNotifier;->onChangeCallBack:Lio/realm/internal/m;

    invoke-virtual {v0, v1}, Lio/realm/internal/o;->b(Lio/realm/internal/m;)V

    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->transactionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->transactionCallbacks:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/realm/internal/RealmNotifier;->transactionCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public didSendNotifications()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lio/realm/internal/RealmNotifier;->startSendingNotificationsCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lio/realm/internal/RealmNotifier;->finishedSendingNotificationsCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getListenersListSize()I
    .locals 1

    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->realmObserverPairs:Lio/realm/internal/o;

    iget-object v0, v0, Lio/realm/internal/o;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public abstract post(Ljava/lang/Runnable;)Z
.end method

.method public removeChangeListener(Ljava/lang/Object;Lio/realm/H;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;",
            "Lio/realm/H;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->realmObserverPairs:Lio/realm/internal/o;

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/o;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public removeChangeListeners(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/realm/internal/RealmNotifier;->realmObserverPairs:Lio/realm/internal/o;

    invoke-virtual {v0, p1}, Lio/realm/internal/o;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public willSendNotifications()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lio/realm/internal/RealmNotifier;->startSendingNotificationsCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lio/realm/internal/RealmNotifier;->startSendingNotificationsCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
