.class public final Lcom/chimeranft/core/Main;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ATTR_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final BADGE_HOOK_RETRY_MS:J

.field private static final CHANNEL_GIFT_BUMP_MS:J

.field private static final CHAT_AUTHOR_CACHE_STAMP_MS:J

.field private static final CHAT_AUTHOR_FETCH_THROTTLE_MS:J

.field private static final CHAT_LIST_CLASS:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final CHAT_PREFETCH_FLUSH:Lcom/chimeranft/core/Main$Companion$CHAT_PREFETCH_FLUSH$1;

.field private static final CHAT_STAMP_THROTTLE_MS:J

.field public static final Companion:Lcom/chimeranft/core/Main$Companion;

.field private static final DEFER_DRAIN:Ljava/lang/Runnable;

.field private static final DEFER_LOCK:Ljava/lang/Object;

.field private static final ELIG_MASK:I

.field private static final ELIG_SLOTS:I

.field private static final FULL_APPLY_THROTTLE_MS:J

.field private static final HEAVY_TEXT_RESOLVER:Lcom/chimeranft/core/Main$Companion$HEAVY_TEXT_RESOLVER$1;

.field private static final HOT_APPLY_THROTTLE_MS:J

.field private static final INT_SIG:[Ljava/lang/Class;

.field private static final INT_SIG_BOOL:[Ljava/lang/Class;

.field private static final MAX_DEFERRED_REPAINTS:I

.field private static final RESTAMP_BATCH:[J

.field private static final RESTAMP_DRAIN:Lcom/chimeranft/core/Main$Companion$RESTAMP_DRAIN$1;

.field private static final RESTAMP_LOCK:Ljava/lang/Object;

.field private static final RUN_UI_SIG:[Ljava/lang/Class;

.field private static final SCROLL_POLL:Lcom/chimeranft/core/Main$Companion$SCROLL_POLL$1;

.field private static final SCROLL_POLL_MS:J

.field private static final SCROLL_WINDOW_MAX_MS:J

.field private static final SENDER_RESOLVER:Lcom/chimeranft/core/Main$Companion$SENDER_RESOLVER$1;

.field private static final SUPPORTER_SCAN_ATTEMPTS:I

.field private static final TRANSITION_MAX_MS:J

.field private static final TYPING_MAX_HOLD_MS:J

.field private static final TYPING_WINDOW_MS:J

.field private static final UC_CLS:Ljava/lang/String;

.field private static final UI_SCROLL_SETTLE:Lcom/chimeranft/core/Main$Companion$UI_SCROLL_SETTLE$1;

.field private static final UNHOOK_CYCLE_MIN_MS:J

.field private static final VERSION_CODE:I

.field private static volatile accessDeniedCallback:Ljava/lang/Runnable;

.field private static volatile accessDeniedDecision:Ljava/lang/String;

.field private static volatile accessUsername:Ljava/lang/String;

.field private static accountPollsCold:J

.field private static accountPollsHot:J

.field private static volatile crashHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static volatile crashHandlerInstalled:Z

.field private static volatile deferArmedAtMs:J

.field private static deferredDrainArmed:Z

.field private static deferredRepaintDrops:J

.field private static final deferredRepaints:Ljava/util/ArrayDeque;

.field private static volatile gramIconPath:Ljava/lang/String;

.field private static instance:Lcom/chimeranft/core/Main;

.field private static volatile lastCrashReport:Ljava/lang/String;

.field private static volatile previousCrashHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static restampAll:Z

.field private static restampArmed:Z

.field private static restampCount:I

.field private static final restampUids:[J

.field private static volatile runOnUiThread:Ljava/lang/reflect/Method;

.field private static volatile runOnUiThreadResolved:Z

.field private static volatile supporterPopupCallback:Ljava/lang/Runnable;


# instance fields
.field private volatile accountCheckDue:Z

.field private volatile activeChatFragment:Ljava/lang/ref/WeakReference;

.field private volatile activeProfileActivity:Ljava/lang/Object;

.field private volatile activeProfileGeneration:J

.field private volatile badgeHookRetryPending:Z

.field private badges:Lcom/chimeranft/core/Badges;

.field private botVerifIconSlot:Lcom/chimeranft/core/HookSlot;

.field private final cellStamps:Lcom/chimeranft/core/CellStamps;

.field private final channelGiftBumpMs:Lcom/chimeranft/core/LongStamps;

.field private final chatAuthorCacheStampMs:Lcom/chimeranft/core/LongStamps;

.field private final chatAuthorFetchMs:Lcom/chimeranft/core/LongStamps;

.field private chatAuthorRestamps:J

.field private chatBatchPrefetches:J

.field private volatile chatBroadcastDormant:Z

.field private chatCreateUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

.field private chatDeferredCells:J

.field private chatDormantSkips:J

.field private final chatFastLaneUnhooks:Ljava/util/ArrayList;

.field private volatile chatIdentityGeneration:J

.field private chatLayoutApplies:J

.field private chatLayoutSkips:J

.field private final chatMessageIdentitySlots:Ljava/util/ArrayList;

.field private chatNegativeHits:J

.field private chatPauseUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

.field private chatPendingAuthorCount:I

.field private final chatPendingAuthorRing:[J

.field private final chatPendingCells:Ljava/util/WeakHashMap;

.field private chatPrefetchFlushArmed:Z

.field private chatPrepareNeedsAfterPass:Z

.field private chatResumeUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

.field private chatScrollDeferrals:J

.field private chatScrollStarts:J

.field private chatScrollStops:J

.field private volatile chatScrollUntilMs:J

.field private volatile chatScrolling:Z

.field private final chatStampThrottle:Lcom/chimeranft/core/LongStamps;

.field private final chatTrace:Lcom/chimeranft/core/OpenTrace;

.field private chatViewUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

.field private volatile controllerAccount:I

.field private volatile controllerCache:Ljava/lang/Object;

.field private volatile controllerGetUser:Ljava/lang/reflect/Method;

.field private volatile controllerGetUserBoxed:Z

.field private volatile currentSlot:I

.field private dataDir:Ljava/lang/String;

.field private dialogCellBadgeUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

.field private final eligBadgeVersion:[J

.field private final eligExpires:[J

.field private final eligGeneration:[J

.field private final eligKey:[J

.field private final eligVisual:[Z

.field private emojiFreezeSlot:Lcom/chimeranft/core/HookSlot;

.field private exteraBadgeSlot:Lcom/chimeranft/core/HookSlot;

.field private exteraBadgeSourceSlot:Lcom/chimeranft/core/HookSlot;

.field private exteraBulletinSlot:Lcom/chimeranft/core/HookSlot;

.field private volatile exteraControllerHooksSettled:Z

.field private exteraSecondaryRuleSlot:Lcom/chimeranft/core/HookSlot;

.field private exteraSecondarySlot:Lcom/chimeranft/core/HookSlot;

.field private volatile exteraSourceHookSettled:Z

.field private volatile flingPassActive:Z

.field private volatile flingPassHasChat:Z

.field private final flingSlots:Ljava/util/ArrayList;

.field private volatile flingUnhooked:Z

.field private final fullSeen:Lcom/chimeranft/core/LongStamps;

.field private getChatFullUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

.field private getChatSlot:Lcom/chimeranft/core/HookSlot;

.field private getUserFullUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

.field private getUserSlot:Lcom/chimeranft/core/HookSlot;

.field private giftHook:Lcom/chimeranft/core/GiftHook;

.field private giftReveal:Lcom/chimeranft/core/GiftReveal;

.field private giftStatus:Ljava/lang/String;

.field private hookStatus:Ljava/lang/String;

.field private final hotSeen:Lcom/chimeranft/core/LongStamps;

.field private identity:Lcom/chimeranft/core/Identity;

.field private volatile lastOfferResult:Ljava/lang/String;

.field private lastPreparedMessage:Ljava/lang/Object;

.field private lastProfileRefreshMs:J

.field private volatile lastUnhookCycleMs:J

.field private notifier:Lcom/chimeranft/core/Notifier;

.field private final openTrace:Lcom/chimeranft/core/OpenTrace;

.field private performance:Lcom/chimeranft/core/PerformanceGovernor;

.field private prefetchExec:Ljava/util/concurrent/ExecutorService;

.field private profileCreateUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

.field private profileDataUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

.field private volatile profileFastApplyMaxUs:J

.field private volatile profileFastApplyTotalUs:J

.field private volatile profileFastCacheHits:J

.field private volatile profileFastOpens:J

.field private profilePauseUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

.field private profilePrepareExecutor:Ljava/util/concurrent/ExecutorService;

.field private profileResumeUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

.field private profileTabsUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

.field private profileViewUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

.field private final putUserIdentityUnhooks:Ljava/util/ArrayList;

.field private volatile realId:J

.field private remote:Lcom/chimeranft/core/RemoteIdentity;

.field private scrollPollScheduled:Z

.field private scrollingList:Ljava/lang/ref/WeakReference;

.field private scrollingListIsChat:Z

.field private volatile selectedAccountField:Ljava/lang/reflect/Field;

.field private volatile selectedAccountFieldResolved:Z

.field private volatile selfCallThread:Ljava/lang/Thread;

.field private volatile selfUserAppliedRevision:J

.field private volatile selfUserCached:Ljava/lang/Object;

.field private store:Lcom/chimeranft/core/Store;

.field private final storeBySlot:Ljava/util/HashMap;

.field private supporterBulletinActionUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

.field private supporterDeepLinkUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

.field private volatile supporterHooksInstalled:Z

.field private final supporterPopupUnhooks:Ljava/util/ArrayList;

.field private supporterScanAttempts:I

.field private sync:Lcom/chimeranft/core/SyncClient;

.field private final transitionUnhooks:Ljava/util/ArrayList;

.field private typingWindowUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

.field private uiScrollDeferrals:J

.field private volatile uiScrollUntilMs:J

.field private volatile uiScrolling:Z

.field private uiTransitionDeferrals:J

.field private volatile uiTransitionDepth:I

.field private volatile uiTransitionUntilMs:J

.field private volatile uiTyping:Z

.field private uiTypingDeferrals:J

.field private volatile uiTypingUntilMs:J

.field private volatile unhookCycles:J

.field private volatile unhookSkippedCycles:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/chimeranft/core/Main$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chimeranft/core/Main$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    const/16 v0, 0x7f

    .line 3407
    sput v0, Lcom/chimeranft/core/Main;->VERSION_CODE:I

    .line 3409
    const-string v0, ""

    sput-object v0, Lcom/chimeranft/core/Main;->gramIconPath:Ljava/lang/String;

    .line 3415
    const-string v1, "{}"

    sput-object v1, Lcom/chimeranft/core/Main;->accessDeniedDecision:Ljava/lang/String;

    .line 3417
    sput-object v0, Lcom/chimeranft/core/Main;->accessUsername:Ljava/lang/String;

    .line 3418
    const-string v1, "org.telegram.messenger.UserConfig"

    sput-object v1, Lcom/chimeranft/core/Main;->UC_CLS:Ljava/lang/String;

    .line 4270
    sput-object v0, Lcom/chimeranft/core/Main;->lastCrashReport:Ljava/lang/String;

    const-wide/16 v0, 0x3e8

    .line 4624
    sput-wide v0, Lcom/chimeranft/core/Main;->UNHOOK_CYCLE_MIN_MS:J

    const-wide/16 v0, 0xfa0

    .line 4625
    sput-wide v0, Lcom/chimeranft/core/Main;->CHAT_STAMP_THROTTLE_MS:J

    const-wide/16 v0, 0x1388

    .line 4629
    sput-wide v0, Lcom/chimeranft/core/Main;->CHANNEL_GIFT_BUMP_MS:J

    const/16 v0, 0x100

    .line 4639
    sput v0, Lcom/chimeranft/core/Main;->ELIG_SLOTS:I

    const/4 v0, 0x1

    rsub-int v1, v0, 0x100

    .line 4640
    sput v1, Lcom/chimeranft/core/Main;->ELIG_MASK:I

    const-wide/16 v1, 0x7530

    .line 4651
    sput-wide v1, Lcom/chimeranft/core/Main;->CHAT_AUTHOR_FETCH_THROTTLE_MS:J

    const-wide/16 v1, 0xbb8

    .line 4652
    sput-wide v1, Lcom/chimeranft/core/Main;->CHAT_AUTHOR_CACHE_STAMP_MS:J

    .line 4678
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/chimeranft/core/Main;->CHAT_LIST_CLASS:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide/16 v1, 0xa28

    .line 4704
    sput-wide v1, Lcom/chimeranft/core/Main;->SCROLL_WINDOW_MAX_MS:J

    const-wide/16 v1, 0x78

    .line 4707
    sput-wide v1, Lcom/chimeranft/core/Main;->SCROLL_POLL_MS:J

    .line 4724
    new-instance v1, Lcom/chimeranft/core/Main$Companion$SCROLL_POLL$1;

    invoke-direct {v1}, Lcom/chimeranft/core/Main$Companion$SCROLL_POLL$1;-><init>()V

    sput-object v1, Lcom/chimeranft/core/Main;->SCROLL_POLL:Lcom/chimeranft/core/Main$Companion$SCROLL_POLL$1;

    .line 4748
    new-instance v1, Lcom/chimeranft/core/Main$Companion$UI_SCROLL_SETTLE$1;

    invoke-direct {v1}, Lcom/chimeranft/core/Main$Companion$UI_SCROLL_SETTLE$1;-><init>()V

    sput-object v1, Lcom/chimeranft/core/Main;->UI_SCROLL_SETTLE:Lcom/chimeranft/core/Main$Companion$UI_SCROLL_SETTLE$1;

    const-wide/16 v1, 0x104

    .line 4778
    sput-wide v1, Lcom/chimeranft/core/Main;->TYPING_WINDOW_MS:J

    const-wide/16 v1, 0x7d0

    .line 4781
    sput-wide v1, Lcom/chimeranft/core/Main;->TYPING_MAX_HOLD_MS:J

    const-wide/16 v1, 0x258

    .line 4801
    sput-wide v1, Lcom/chimeranft/core/Main;->TRANSITION_MAX_MS:J

    const/16 v1, 0x80

    .line 4960
    sput v1, Lcom/chimeranft/core/Main;->MAX_DEFERRED_REPAINTS:I

    .line 4961
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/chimeranft/core/Main;->DEFER_LOCK:Ljava/lang/Object;

    .line 4962
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v1, Lcom/chimeranft/core/Main;->deferredRepaints:Ljava/util/ArrayDeque;

    .line 4976
    new-instance v1, Lcom/chimeranft/core/Main$Companion$DEFER_DRAIN$1;

    invoke-direct {v1}, Lcom/chimeranft/core/Main$Companion$DEFER_DRAIN$1;-><init>()V

    sput-object v1, Lcom/chimeranft/core/Main;->DEFER_DRAIN:Ljava/lang/Runnable;

    const/4 v1, 0x2

    .line 5200
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Runnable;

    aput-object v3, v1, v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v0

    sput-object v1, Lcom/chimeranft/core/Main;->RUN_UI_SIG:[Ljava/lang/Class;

    .line 5255
    new-instance v1, Lcom/chimeranft/core/Main$Companion$CHAT_PREFETCH_FLUSH$1;

    invoke-direct {v1}, Lcom/chimeranft/core/Main$Companion$CHAT_PREFETCH_FLUSH$1;-><init>()V

    sput-object v1, Lcom/chimeranft/core/Main;->CHAT_PREFETCH_FLUSH:Lcom/chimeranft/core/Main$Companion$CHAT_PREFETCH_FLUSH$1;

    .line 5272
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/chimeranft/core/Main;->RESTAMP_LOCK:Ljava/lang/Object;

    const/16 v1, 0x20

    .line 5273
    new-array v3, v1, [J

    sput-object v3, Lcom/chimeranft/core/Main;->restampUids:[J

    .line 5275
    new-array v1, v1, [J

    sput-object v1, Lcom/chimeranft/core/Main;->RESTAMP_BATCH:[J

    .line 5281
    new-instance v1, Lcom/chimeranft/core/Main$Companion$RESTAMP_DRAIN$1;

    invoke-direct {v1}, Lcom/chimeranft/core/Main$Companion$RESTAMP_DRAIN$1;-><init>()V

    sput-object v1, Lcom/chimeranft/core/Main;->RESTAMP_DRAIN:Lcom/chimeranft/core/Main$Companion$RESTAMP_DRAIN$1;

    .line 5297
    new-array v1, v0, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    sput-object v1, Lcom/chimeranft/core/Main;->INT_SIG:[Ljava/lang/Class;

    .line 5343
    new-instance v1, Lcom/chimeranft/core/Main$Companion$HEAVY_TEXT_RESOLVER$1;

    invoke-direct {v1}, Lcom/chimeranft/core/Main$Companion$HEAVY_TEXT_RESOLVER$1;-><init>()V

    sput-object v1, Lcom/chimeranft/core/Main;->HEAVY_TEXT_RESOLVER:Lcom/chimeranft/core/Main$Companion$HEAVY_TEXT_RESOLVER$1;

    .line 5382
    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sput-object v0, Lcom/chimeranft/core/Main;->INT_SIG_BOOL:[Ljava/lang/Class;

    .line 5384
    new-instance v0, Lcom/chimeranft/core/Main$Companion$SENDER_RESOLVER$1;

    invoke-direct {v0}, Lcom/chimeranft/core/Main$Companion$SENDER_RESOLVER$1;-><init>()V

    sput-object v0, Lcom/chimeranft/core/Main;->SENDER_RESOLVER:Lcom/chimeranft/core/Main$Companion$SENDER_RESOLVER$1;

    const/16 v0, 0x8

    .line 5485
    sput v0, Lcom/chimeranft/core/Main;->SUPPORTER_SCAN_ATTEMPTS:I

    const-wide/16 v0, 0x17c

    .line 5504
    sput-wide v0, Lcom/chimeranft/core/Main;->BADGE_HOOK_RETRY_MS:J

    const-wide/16 v0, 0x5dc

    .line 5505
    sput-wide v0, Lcom/chimeranft/core/Main;->HOT_APPLY_THROTTLE_MS:J

    const-wide/16 v0, 0x4b0

    .line 5506
    sput-wide v0, Lcom/chimeranft/core/Main;->FULL_APPLY_THROTTLE_MS:J

    .line 6962
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/chimeranft/core/Main;->ATTR_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "(none)"

    iput-object v0, p0, Lcom/chimeranft/core/Main;->lastOfferResult:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chimeranft/core/Main;->supporterPopupUnhooks:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chimeranft/core/Main;->putUserIdentityUnhooks:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chimeranft/core/Main;->chatMessageIdentitySlots:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chimeranft/core/Main;->chatFastLaneUnhooks:Ljava/util/ArrayList;

    .line 81
    const-string v0, "(no hook)"

    iput-object v0, p0, Lcom/chimeranft/core/Main;->hookStatus:Ljava/lang/String;

    .line 82
    const-string v0, "(no gift hook)"

    iput-object v0, p0, Lcom/chimeranft/core/Main;->giftStatus:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/chimeranft/core/Main;->dataDir:Ljava/lang/String;

    const/4 v0, -0x1

    .line 87
    iput v0, p0, Lcom/chimeranft/core/Main;->currentSlot:I

    .line 88
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/chimeranft/core/Main;->storeBySlot:Ljava/util/HashMap;

    const/4 v1, 0x1

    .line 101
    iput-boolean v1, p0, Lcom/chimeranft/core/Main;->accountCheckDue:Z

    .line 108
    new-instance v1, Lcom/chimeranft/core/LongStamps;

    const/16 v2, 0x800

    invoke-direct {v1, v2}, Lcom/chimeranft/core/LongStamps;-><init>(I)V

    iput-object v1, p0, Lcom/chimeranft/core/Main;->chatAuthorFetchMs:Lcom/chimeranft/core/LongStamps;

    .line 110
    new-instance v1, Lcom/chimeranft/core/CellStamps;

    invoke-direct {v1}, Lcom/chimeranft/core/CellStamps;-><init>()V

    iput-object v1, p0, Lcom/chimeranft/core/Main;->cellStamps:Lcom/chimeranft/core/CellStamps;

    const-wide/16 v1, 0x1

    .line 119
    iput-wide v1, p0, Lcom/chimeranft/core/Main;->chatIdentityGeneration:J

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/chimeranft/core/Main;->flingSlots:Ljava/util/ArrayList;

    .line 157
    new-instance v1, Lcom/chimeranft/core/LongStamps;

    const/16 v2, 0x200

    invoke-direct {v1, v2}, Lcom/chimeranft/core/LongStamps;-><init>(I)V

    iput-object v1, p0, Lcom/chimeranft/core/Main;->chatStampThrottle:Lcom/chimeranft/core/LongStamps;

    .line 159
    new-instance v1, Lcom/chimeranft/core/LongStamps;

    const/16 v3, 0x100

    invoke-direct {v1, v3}, Lcom/chimeranft/core/LongStamps;-><init>(I)V

    iput-object v1, p0, Lcom/chimeranft/core/Main;->channelGiftBumpMs:Lcom/chimeranft/core/LongStamps;

    .line 175
    new-array v1, v3, [J

    iput-object v1, p0, Lcom/chimeranft/core/Main;->chatPendingAuthorRing:[J

    .line 177
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lcom/chimeranft/core/Main;->chatPendingCells:Ljava/util/WeakHashMap;

    .line 178
    sget v1, Lcom/chimeranft/core/Main;->ELIG_SLOTS:I

    new-array v3, v1, [J

    iput-object v3, p0, Lcom/chimeranft/core/Main;->eligKey:[J

    .line 179
    new-array v3, v1, [J

    iput-object v3, p0, Lcom/chimeranft/core/Main;->eligGeneration:[J

    .line 180
    new-array v3, v1, [J

    iput-object v3, p0, Lcom/chimeranft/core/Main;->eligBadgeVersion:[J

    .line 181
    new-array v3, v1, [J

    iput-object v3, p0, Lcom/chimeranft/core/Main;->eligExpires:[J

    .line 182
    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/chimeranft/core/Main;->eligVisual:[Z

    .line 184
    new-instance v1, Lcom/chimeranft/core/LongStamps;

    invoke-direct {v1, v2}, Lcom/chimeranft/core/LongStamps;-><init>(I)V

    iput-object v1, p0, Lcom/chimeranft/core/Main;->chatAuthorCacheStampMs:Lcom/chimeranft/core/LongStamps;

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/chimeranft/core/Main;->transitionUnhooks:Ljava/util/ArrayList;

    .line 273
    iput v0, p0, Lcom/chimeranft/core/Main;->controllerAccount:I

    const-wide/16 v0, -0x1

    .line 285
    iput-wide v0, p0, Lcom/chimeranft/core/Main;->selfUserAppliedRevision:J

    .line 291
    sget-object v0, Lcom/chimeranft/core/OpenTrace;->Companion:Lcom/chimeranft/core/OpenTrace$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/OpenTrace$Companion;->forProfile()Lcom/chimeranft/core/OpenTrace;

    move-result-object v1

    iput-object v1, p0, Lcom/chimeranft/core/Main;->openTrace:Lcom/chimeranft/core/OpenTrace;

    .line 302
    invoke-virtual {v0}, Lcom/chimeranft/core/OpenTrace$Companion;->forChat()Lcom/chimeranft/core/OpenTrace;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/Main;->chatTrace:Lcom/chimeranft/core/OpenTrace;

    .line 319
    new-instance v0, Lcom/chimeranft/core/LongStamps;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/chimeranft/core/LongStamps;-><init>(I)V

    iput-object v0, p0, Lcom/chimeranft/core/Main;->hotSeen:Lcom/chimeranft/core/LongStamps;

    .line 327
    new-instance v0, Lcom/chimeranft/core/LongStamps;

    invoke-direct {v0, v2}, Lcom/chimeranft/core/LongStamps;-><init>(I)V

    iput-object v0, p0, Lcom/chimeranft/core/Main;->fullSeen:Lcom/chimeranft/core/LongStamps;

    return-void
.end method

.method public static final synthetic access$armEmojiFreezeSlot(Lcom/chimeranft/core/Main;Z)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Main;->armEmojiFreezeSlot(Z)V

    return-void
.end method

.method public static final synthetic access$cachedUserFor(Lcom/chimeranft/core/Main;J)Ljava/lang/Object;
    .registers 3

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Main;->cachedUserFor(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$closeScrollWindows(Lcom/chimeranft/core/Main;)V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->closeScrollWindows()V

    return-void
.end method

.method public static final synthetic access$configureIdentityFromStore(Lcom/chimeranft/core/Main;)V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->configureIdentityFromStore()V

    return-void
.end method

.method public static final synthetic access$endFlingPass(Lcom/chimeranft/core/Main;)V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->endFlingPass()V

    return-void
.end method

.method public static final synthetic access$ensureAccount(Lcom/chimeranft/core/Main;)V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->ensureAccount()V

    return-void
.end method

.method public static final synthetic access$ensureAccountFast(Lcom/chimeranft/core/Main;)V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->ensureAccountFast()V

    return-void
.end method

.method public static final synthetic access$ensureFlingSlotsLive(Lcom/chimeranft/core/Main;)V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->ensureFlingSlotsLive()V

    return-void
.end method

.method public static final synthetic access$ensureProfileGiftSection(Lcom/chimeranft/core/Main;Ljava/lang/Object;Z)Z
    .registers 3

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Main;->ensureProfileGiftSection(Ljava/lang/Object;Z)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$flushPendingAuthorPrefetch(Lcom/chimeranft/core/Main;)V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->flushPendingAuthorPrefetch()V

    return-void
.end method

.method public static final synthetic access$forgetChatEligibility(Lcom/chimeranft/core/Main;J)V
    .registers 3

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Main;->forgetChatEligibility(J)V

    return-void
.end method

.method public static final synthetic access$fullThrottled(Lcom/chimeranft/core/Main;J)Z
    .registers 3

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Main;->fullThrottled(J)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getATTR_CACHE$cp()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 20
    sget-object v0, Lcom/chimeranft/core/Main;->ATTR_CACHE:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final synthetic access$getAccessDeniedCallback$cp()Ljava/lang/Runnable;
    .registers 1

    .line 20
    sget-object v0, Lcom/chimeranft/core/Main;->accessDeniedCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static final synthetic access$getAccessDeniedDecision$cp()Ljava/lang/String;
    .registers 1

    .line 20
    sget-object v0, Lcom/chimeranft/core/Main;->accessDeniedDecision:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getAccessUsername$cp()Ljava/lang/String;
    .registers 1

    .line 20
    sget-object v0, Lcom/chimeranft/core/Main;->accessUsername:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getAccountPollsCold$cp()J
    .registers 2

    .line 20
    sget-wide v0, Lcom/chimeranft/core/Main;->accountPollsCold:J

    return-wide v0
.end method

.method public static final synthetic access$getAccountPollsHot$cp()J
    .registers 2

    .line 20
    sget-wide v0, Lcom/chimeranft/core/Main;->accountPollsHot:J

    return-wide v0
.end method

.method public static final synthetic access$getActiveChatFragment$p(Lcom/chimeranft/core/Main;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->activeChatFragment:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static final synthetic access$getActiveProfileActivity$p(Lcom/chimeranft/core/Main;)Ljava/lang/Object;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->activeProfileActivity:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getActiveProfileGeneration$p(Lcom/chimeranft/core/Main;)J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/chimeranft/core/Main;->activeProfileGeneration:J

    return-wide v0
.end method

.method public static final synthetic access$getBadges$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Badges;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;

    return-object p0
.end method

.method public static final synthetic access$getBotVerifIconSlot$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/HookSlot;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->botVerifIconSlot:Lcom/chimeranft/core/HookSlot;

    return-object p0
.end method

.method public static final synthetic access$getCHAT_LIST_CLASS$cp()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 20
    sget-object v0, Lcom/chimeranft/core/Main;->CHAT_LIST_CLASS:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final synthetic access$getCHAT_STAMP_THROTTLE_MS$cp()J
    .registers 2

    .line 20
    sget-wide v0, Lcom/chimeranft/core/Main;->CHAT_STAMP_THROTTLE_MS:J

    return-wide v0
.end method

.method public static final synthetic access$getCellStamps$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/CellStamps;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->cellStamps:Lcom/chimeranft/core/CellStamps;

    return-object p0
.end method

.method public static final synthetic access$getChannelGiftBumpMs$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/LongStamps;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->channelGiftBumpMs:Lcom/chimeranft/core/LongStamps;

    return-object p0
.end method

.method public static final synthetic access$getChatAuthorCacheStampMs$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/LongStamps;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->chatAuthorCacheStampMs:Lcom/chimeranft/core/LongStamps;

    return-object p0
.end method

.method public static final synthetic access$getChatAuthorFetchMs$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/LongStamps;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->chatAuthorFetchMs:Lcom/chimeranft/core/LongStamps;

    return-object p0
.end method

.method public static final synthetic access$getChatAuthorRestamps$p(Lcom/chimeranft/core/Main;)J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/chimeranft/core/Main;->chatAuthorRestamps:J

    return-wide v0
.end method

.method public static final synthetic access$getChatBatchPrefetches$p(Lcom/chimeranft/core/Main;)J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/chimeranft/core/Main;->chatBatchPrefetches:J

    return-wide v0
.end method

.method public static final synthetic access$getChatBroadcastDormant$p(Lcom/chimeranft/core/Main;)Z
    .registers 1

    .line 20
    iget-boolean p0, p0, Lcom/chimeranft/core/Main;->chatBroadcastDormant:Z

    return p0
.end method

.method public static final synthetic access$getChatCreateUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->chatCreateUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-object p0
.end method

.method public static final synthetic access$getChatDeferredCells$p(Lcom/chimeranft/core/Main;)J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/chimeranft/core/Main;->chatDeferredCells:J

    return-wide v0
.end method

.method public static final synthetic access$getChatDormantSkips$p(Lcom/chimeranft/core/Main;)J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/chimeranft/core/Main;->chatDormantSkips:J

    return-wide v0
.end method

.method public static final synthetic access$getChatFastLaneUnhooks$p(Lcom/chimeranft/core/Main;)Ljava/util/ArrayList;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->chatFastLaneUnhooks:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getChatIdentityGeneration$p(Lcom/chimeranft/core/Main;)J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/chimeranft/core/Main;->chatIdentityGeneration:J

    return-wide v0
.end method

.method public static final synthetic access$getChatLayoutApplies$p(Lcom/chimeranft/core/Main;)J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/chimeranft/core/Main;->chatLayoutApplies:J

    return-wide v0
.end method

.method public static final synthetic access$getChatLayoutSkips$p(Lcom/chimeranft/core/Main;)J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/chimeranft/core/Main;->chatLayoutSkips:J

    return-wide v0
.end method

.method public static final synthetic access$getChatMessageIdentitySlots$p(Lcom/chimeranft/core/Main;)Ljava/util/ArrayList;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->chatMessageIdentitySlots:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getChatNegativeHits$p(Lcom/chimeranft/core/Main;)J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/chimeranft/core/Main;->chatNegativeHits:J

    return-wide v0
.end method

.method public static final synthetic access$getChatPauseUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->chatPauseUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-object p0
.end method

.method public static final synthetic access$getChatPendingCells$p(Lcom/chimeranft/core/Main;)Ljava/util/WeakHashMap;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->chatPendingCells:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method public static final synthetic access$getChatPrepareNeedsAfterPass$p(Lcom/chimeranft/core/Main;)Z
    .registers 1

    .line 20
    iget-boolean p0, p0, Lcom/chimeranft/core/Main;->chatPrepareNeedsAfterPass:Z

    return p0
.end method

.method public static final synthetic access$getChatResumeUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->chatResumeUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-object p0
.end method

.method public static final synthetic access$getChatScrollDeferrals$p(Lcom/chimeranft/core/Main;)J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/chimeranft/core/Main;->chatScrollDeferrals:J

    return-wide v0
.end method

.method public static final synthetic access$getChatScrollStarts$p(Lcom/chimeranft/core/Main;)J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/chimeranft/core/Main;->chatScrollStarts:J

    return-wide v0
.end method

.method public static final synthetic access$getChatScrollStops$p(Lcom/chimeranft/core/Main;)J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/chimeranft/core/Main;->chatScrollStops:J

    return-wide v0
.end method

.method public static final synthetic access$getChatScrollUntilMs$p(Lcom/chimeranft/core/Main;)J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/chimeranft/core/Main;->chatScrollUntilMs:J

    return-wide v0
.end method

.method public static final synthetic access$getChatScrolling$p(Lcom/chimeranft/core/Main;)Z
    .registers 1

    .line 20
    iget-boolean p0, p0, Lcom/chimeranft/core/Main;->chatScrolling:Z

    return p0
.end method

.method public static final synthetic access$getChatStampThrottle$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/LongStamps;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->chatStampThrottle:Lcom/chimeranft/core/LongStamps;

    return-object p0
.end method

.method public static final synthetic access$getChatTrace$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/OpenTrace;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->chatTrace:Lcom/chimeranft/core/OpenTrace;

    return-object p0
.end method

.method public static final synthetic access$getChatViewUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->chatViewUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-object p0
.end method

.method public static final synthetic access$getCrashHandler$cp()Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 1

    .line 20
    sget-object v0, Lcom/chimeranft/core/Main;->crashHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public static final synthetic access$getCrashHandlerInstalled$cp()Z
    .registers 1

    .line 20
    sget-boolean v0, Lcom/chimeranft/core/Main;->crashHandlerInstalled:Z

    return v0
.end method

.method public static final synthetic access$getCurrentSlot$p(Lcom/chimeranft/core/Main;)I
    .registers 1

    .line 20
    iget p0, p0, Lcom/chimeranft/core/Main;->currentSlot:I

    return p0
.end method

.method public static final synthetic access$getDEFER_DRAIN$cp()Ljava/lang/Runnable;
    .registers 1

    .line 20
    sget-object v0, Lcom/chimeranft/core/Main;->DEFER_DRAIN:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static final synthetic access$getDEFER_LOCK$cp()Ljava/lang/Object;
    .registers 1

    .line 20
    sget-object v0, Lcom/chimeranft/core/Main;->DEFER_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$getDataDir$p(Lcom/chimeranft/core/Main;)Ljava/lang/String;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->dataDir:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getDeferArmedAtMs$cp()J
    .registers 2

    .line 20
    sget-wide v0, Lcom/chimeranft/core/Main;->deferArmedAtMs:J

    return-wide v0
.end method

.method public static final synthetic access$getDeferredDrainArmed$cp()Z
    .registers 1

    .line 20
    sget-boolean v0, Lcom/chimeranft/core/Main;->deferredDrainArmed:Z

    return v0
.end method

.method public static final synthetic access$getDeferredRepaintDrops$cp()J
    .registers 2

    .line 20
    sget-wide v0, Lcom/chimeranft/core/Main;->deferredRepaintDrops:J

    return-wide v0
.end method

.method public static final synthetic access$getDeferredRepaints$cp()Ljava/util/ArrayDeque;
    .registers 1

    .line 20
    sget-object v0, Lcom/chimeranft/core/Main;->deferredRepaints:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method public static final synthetic access$getDialogCellBadgeUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->dialogCellBadgeUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-object p0
.end method

.method public static final synthetic access$getELIG_MASK$cp()I
    .registers 1

    .line 20
    sget v0, Lcom/chimeranft/core/Main;->ELIG_MASK:I

    return v0
.end method

.method public static final synthetic access$getEligKey$p(Lcom/chimeranft/core/Main;)[J
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->eligKey:[J

    return-object p0
.end method

.method public static final synthetic access$getEmojiFreezeSlot$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/HookSlot;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->emojiFreezeSlot:Lcom/chimeranft/core/HookSlot;

    return-object p0
.end method

.method public static final synthetic access$getExteraBadgeSlot$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/HookSlot;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->exteraBadgeSlot:Lcom/chimeranft/core/HookSlot;

    return-object p0
.end method

.method public static final synthetic access$getExteraBadgeSourceSlot$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/HookSlot;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->exteraBadgeSourceSlot:Lcom/chimeranft/core/HookSlot;

    return-object p0
.end method

.method public static final synthetic access$getExteraBulletinSlot$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/HookSlot;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->exteraBulletinSlot:Lcom/chimeranft/core/HookSlot;

    return-object p0
.end method

.method public static final synthetic access$getExteraSecondaryRuleSlot$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/HookSlot;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->exteraSecondaryRuleSlot:Lcom/chimeranft/core/HookSlot;

    return-object p0
.end method

.method public static final synthetic access$getExteraSecondarySlot$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/HookSlot;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->exteraSecondarySlot:Lcom/chimeranft/core/HookSlot;

    return-object p0
.end method

.method public static final synthetic access$getFlingPassActive$p(Lcom/chimeranft/core/Main;)Z
    .registers 1

    .line 20
    iget-boolean p0, p0, Lcom/chimeranft/core/Main;->flingPassActive:Z

    return p0
.end method

.method public static final synthetic access$getFlingPassHasChat$p(Lcom/chimeranft/core/Main;)Z
    .registers 1

    .line 20
    iget-boolean p0, p0, Lcom/chimeranft/core/Main;->flingPassHasChat:Z

    return p0
.end method

.method public static final synthetic access$getFlingSlots$p(Lcom/chimeranft/core/Main;)Ljava/util/ArrayList;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->flingSlots:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getFlingUnhooked$p(Lcom/chimeranft/core/Main;)Z
    .registers 1

    .line 20
    iget-boolean p0, p0, Lcom/chimeranft/core/Main;->flingUnhooked:Z

    return p0
.end method

.method public static final synthetic access$getFullSeen$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/LongStamps;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->fullSeen:Lcom/chimeranft/core/LongStamps;

    return-object p0
.end method

.method public static final synthetic access$getGetChatFullUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->getChatFullUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-object p0
.end method

.method public static final synthetic access$getGetChatSlot$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/HookSlot;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->getChatSlot:Lcom/chimeranft/core/HookSlot;

    return-object p0
.end method

.method public static final synthetic access$getGetUserFullUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->getUserFullUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-object p0
.end method

.method public static final synthetic access$getGetUserSlot$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/HookSlot;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->getUserSlot:Lcom/chimeranft/core/HookSlot;

    return-object p0
.end method

.method public static final synthetic access$getGiftHook$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftHook;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;

    return-object p0
.end method

.method public static final synthetic access$getGiftReveal$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/GiftReveal;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->giftReveal:Lcom/chimeranft/core/GiftReveal;

    return-object p0
.end method

.method public static final synthetic access$getGiftStatus$p(Lcom/chimeranft/core/Main;)Ljava/lang/String;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->giftStatus:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getGramIconPath$cp()Ljava/lang/String;
    .registers 1

    .line 20
    sget-object v0, Lcom/chimeranft/core/Main;->gramIconPath:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getHEAVY_TEXT_RESOLVER$cp()Lcom/chimeranft/core/Main$Companion$HEAVY_TEXT_RESOLVER$1;
    .registers 1

    .line 20
    sget-object v0, Lcom/chimeranft/core/Main;->HEAVY_TEXT_RESOLVER:Lcom/chimeranft/core/Main$Companion$HEAVY_TEXT_RESOLVER$1;

    return-object v0
.end method

.method public static final synthetic access$getHookStatus$p(Lcom/chimeranft/core/Main;)Ljava/lang/String;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->hookStatus:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getHotSeen$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/LongStamps;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->hotSeen:Lcom/chimeranft/core/LongStamps;

    return-object p0
.end method

.method public static final synthetic access$getIdentity$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Identity;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;

    return-object p0
.end method

.method public static final synthetic access$getInstance$cp()Lcom/chimeranft/core/Main;
    .registers 1

    .line 20
    sget-object v0, Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;

    return-object v0
.end method

.method public static final synthetic access$getLastCrashReport$cp()Ljava/lang/String;
    .registers 1

    .line 20
    sget-object v0, Lcom/chimeranft/core/Main;->lastCrashReport:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getLastPreparedMessage$p(Lcom/chimeranft/core/Main;)Ljava/lang/Object;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->lastPreparedMessage:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getMAX_DEFERRED_REPAINTS$cp()I
    .registers 1

    .line 20
    sget v0, Lcom/chimeranft/core/Main;->MAX_DEFERRED_REPAINTS:I

    return v0
.end method

.method public static final synthetic access$getNotifier$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Notifier;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->notifier:Lcom/chimeranft/core/Notifier;

    return-object p0
.end method

.method public static final synthetic access$getOpenTrace$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/OpenTrace;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->openTrace:Lcom/chimeranft/core/OpenTrace;

    return-object p0
.end method

.method public static final synthetic access$getPerformance$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/PerformanceGovernor;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->performance:Lcom/chimeranft/core/PerformanceGovernor;

    return-object p0
.end method

.method public static final synthetic access$getPrefetchExec$p(Lcom/chimeranft/core/Main;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->prefetchExec:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public static final synthetic access$getPreviousCrashHandler$cp()Ljava/lang/Thread$UncaughtExceptionHandler;
    .registers 1

    .line 20
    sget-object v0, Lcom/chimeranft/core/Main;->previousCrashHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public static final synthetic access$getProfileCreateUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->profileCreateUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-object p0
.end method

.method public static final synthetic access$getProfileDataUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->profileDataUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-object p0
.end method

.method public static final synthetic access$getProfileFastApplyMaxUs$p(Lcom/chimeranft/core/Main;)J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/chimeranft/core/Main;->profileFastApplyMaxUs:J

    return-wide v0
.end method

.method public static final synthetic access$getProfileFastApplyTotalUs$p(Lcom/chimeranft/core/Main;)J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/chimeranft/core/Main;->profileFastApplyTotalUs:J

    return-wide v0
.end method

.method public static final synthetic access$getProfileFastCacheHits$p(Lcom/chimeranft/core/Main;)J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/chimeranft/core/Main;->profileFastCacheHits:J

    return-wide v0
.end method

.method public static final synthetic access$getProfileFastOpens$p(Lcom/chimeranft/core/Main;)J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/chimeranft/core/Main;->profileFastOpens:J

    return-wide v0
.end method

.method public static final synthetic access$getProfilePauseUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->profilePauseUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-object p0
.end method

.method public static final synthetic access$getProfilePrepareExecutor$p(Lcom/chimeranft/core/Main;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->profilePrepareExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public static final synthetic access$getProfileResumeUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->profileResumeUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-object p0
.end method

.method public static final synthetic access$getProfileTabsUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->profileTabsUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-object p0
.end method

.method public static final synthetic access$getProfileViewUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->profileViewUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-object p0
.end method

.method public static final synthetic access$getPutUserIdentityUnhooks$p(Lcom/chimeranft/core/Main;)Ljava/util/ArrayList;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->putUserIdentityUnhooks:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getRESTAMP_BATCH$cp()[J
    .registers 1

    .line 20
    sget-object v0, Lcom/chimeranft/core/Main;->RESTAMP_BATCH:[J

    return-object v0
.end method

.method public static final synthetic access$getRESTAMP_LOCK$cp()Ljava/lang/Object;
    .registers 1

    .line 20
    sget-object v0, Lcom/chimeranft/core/Main;->RESTAMP_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$getRUN_UI_SIG$cp()[Ljava/lang/Class;
    .registers 1

    .line 20
    sget-object v0, Lcom/chimeranft/core/Main;->RUN_UI_SIG:[Ljava/lang/Class;

    return-object v0
.end method

.method public static final synthetic access$getRealId$p(Lcom/chimeranft/core/Main;)J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/chimeranft/core/Main;->realId:J

    return-wide v0
.end method

.method public static final synthetic access$getRemote$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/RemoteIdentity;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->remote:Lcom/chimeranft/core/RemoteIdentity;

    return-object p0
.end method

.method public static final synthetic access$getRestampAll$cp()Z
    .registers 1

    .line 20
    sget-boolean v0, Lcom/chimeranft/core/Main;->restampAll:Z

    return v0
.end method

.method public static final synthetic access$getRestampCount$cp()I
    .registers 1

    .line 20
    sget v0, Lcom/chimeranft/core/Main;->restampCount:I

    return v0
.end method

.method public static final synthetic access$getRestampUids$cp()[J
    .registers 1

    .line 20
    sget-object v0, Lcom/chimeranft/core/Main;->restampUids:[J

    return-object v0
.end method

.method public static final synthetic access$getRunOnUiThread$cp()Ljava/lang/reflect/Method;
    .registers 1

    .line 20
    sget-object v0, Lcom/chimeranft/core/Main;->runOnUiThread:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static final synthetic access$getRunOnUiThreadResolved$cp()Z
    .registers 1

    .line 20
    sget-boolean v0, Lcom/chimeranft/core/Main;->runOnUiThreadResolved:Z

    return v0
.end method

.method public static final synthetic access$getScrollingList$p(Lcom/chimeranft/core/Main;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->scrollingList:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static final synthetic access$getScrollingListIsChat$p(Lcom/chimeranft/core/Main;)Z
    .registers 1

    .line 20
    iget-boolean p0, p0, Lcom/chimeranft/core/Main;->scrollingListIsChat:Z

    return p0
.end method

.method public static final synthetic access$getSelfCallThread$p(Lcom/chimeranft/core/Main;)Ljava/lang/Thread;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->selfCallThread:Ljava/lang/Thread;

    return-object p0
.end method

.method public static final synthetic access$getStore$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/Store;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;

    return-object p0
.end method

.method public static final synthetic access$getStoreBySlot$p(Lcom/chimeranft/core/Main;)Ljava/util/HashMap;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->storeBySlot:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getSupporterBulletinActionUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->supporterBulletinActionUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-object p0
.end method

.method public static final synthetic access$getSupporterDeepLinkUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->supporterDeepLinkUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-object p0
.end method

.method public static final synthetic access$getSupporterPopupCallback$cp()Ljava/lang/Runnable;
    .registers 1

    .line 20
    sget-object v0, Lcom/chimeranft/core/Main;->supporterPopupCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static final synthetic access$getSupporterPopupUnhooks$p(Lcom/chimeranft/core/Main;)Ljava/util/ArrayList;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->supporterPopupUnhooks:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getSync$p(Lcom/chimeranft/core/Main;)Lcom/chimeranft/core/SyncClient;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;

    return-object p0
.end method

.method public static final synthetic access$getTRANSITION_MAX_MS$cp()J
    .registers 2

    .line 20
    sget-wide v0, Lcom/chimeranft/core/Main;->TRANSITION_MAX_MS:J

    return-wide v0
.end method

.method public static final synthetic access$getTYPING_MAX_HOLD_MS$cp()J
    .registers 2

    .line 20
    sget-wide v0, Lcom/chimeranft/core/Main;->TYPING_MAX_HOLD_MS:J

    return-wide v0
.end method

.method public static final synthetic access$getTYPING_WINDOW_MS$cp()J
    .registers 2

    .line 20
    sget-wide v0, Lcom/chimeranft/core/Main;->TYPING_WINDOW_MS:J

    return-wide v0
.end method

.method public static final synthetic access$getTransitionUnhooks$p(Lcom/chimeranft/core/Main;)Ljava/util/ArrayList;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->transitionUnhooks:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getTypingWindowUnhook$p(Lcom/chimeranft/core/Main;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/chimeranft/core/Main;->typingWindowUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-object p0
.end method

.method public static final synthetic access$getUC_CLS$cp()Ljava/lang/String;
    .registers 1

    .line 20
    sget-object v0, Lcom/chimeranft/core/Main;->UC_CLS:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getUiScrollDeferrals$p(Lcom/chimeranft/core/Main;)J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/chimeranft/core/Main;->uiScrollDeferrals:J

    return-wide v0
.end method

.method public static final synthetic access$getUiScrollUntilMs$p(Lcom/chimeranft/core/Main;)J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/chimeranft/core/Main;->uiScrollUntilMs:J

    return-wide v0
.end method

.method public static final synthetic access$getUiScrolling$p(Lcom/chimeranft/core/Main;)Z
    .registers 1

    .line 20
    iget-boolean p0, p0, Lcom/chimeranft/core/Main;->uiScrolling:Z

    return p0
.end method

.method public static final synthetic access$getUiTransitionDeferrals$p(Lcom/chimeranft/core/Main;)J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/chimeranft/core/Main;->uiTransitionDeferrals:J

    return-wide v0
.end method

.method public static final synthetic access$getUiTransitionDepth$p(Lcom/chimeranft/core/Main;)I
    .registers 1

    .line 20
    iget p0, p0, Lcom/chimeranft/core/Main;->uiTransitionDepth:I

    return p0
.end method

.method public static final synthetic access$getUiTransitionUntilMs$p(Lcom/chimeranft/core/Main;)J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/chimeranft/core/Main;->uiTransitionUntilMs:J

    return-wide v0
.end method

.method public static final synthetic access$getUiTyping$p(Lcom/chimeranft/core/Main;)Z
    .registers 1

    .line 20
    iget-boolean p0, p0, Lcom/chimeranft/core/Main;->uiTyping:Z

    return p0
.end method

.method public static final synthetic access$getUiTypingDeferrals$p(Lcom/chimeranft/core/Main;)J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/chimeranft/core/Main;->uiTypingDeferrals:J

    return-wide v0
.end method

.method public static final synthetic access$getUiTypingUntilMs$p(Lcom/chimeranft/core/Main;)J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/chimeranft/core/Main;->uiTypingUntilMs:J

    return-wide v0
.end method

.method public static final synthetic access$getUnhookCycles$p(Lcom/chimeranft/core/Main;)J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/chimeranft/core/Main;->unhookCycles:J

    return-wide v0
.end method

.method public static final synthetic access$getUnhookSkippedCycles$p(Lcom/chimeranft/core/Main;)J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/chimeranft/core/Main;->unhookSkippedCycles:J

    return-wide v0
.end method

.method public static final synthetic access$getVERSION_CODE$cp()I
    .registers 1

    .line 20
    sget v0, Lcom/chimeranft/core/Main;->VERSION_CODE:I

    return v0
.end method

.method public static final synthetic access$hotThrottled(Lcom/chimeranft/core/Main;JLjava/lang/Object;)Z
    .registers 4

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/Main;->hotThrottled(JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$installAllHooks(Lcom/chimeranft/core/Main;)V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->installAllHooks()V

    return-void
.end method

.method public static final synthetic access$installExteraBadgeControllerHooks(Lcom/chimeranft/core/Main;)V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->installExteraBadgeControllerHooks()V

    return-void
.end method

.method public static final synthetic access$installExteraBadgeSourceHook(Lcom/chimeranft/core/Main;)V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->installExteraBadgeSourceHook()V

    return-void
.end method

.method public static final synthetic access$installSupporterPopupHooks(Lcom/chimeranft/core/Main;)V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->installSupporterPopupHooks()V

    return-void
.end method

.method public static final synthetic access$invalidateControllerCache(Lcom/chimeranft/core/Main;)V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->invalidateControllerCache()V

    return-void
.end method

.method public static final synthetic access$isChimeraSupporterProfileVisible(Lcom/chimeranft/core/Main;)Z
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->isChimeraSupporterProfileVisible()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isDialogChat(Lcom/chimeranft/core/Main;Ljava/lang/Object;)Z
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Main;->isDialogChat(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isSelfProfile(Lcom/chimeranft/core/Main;Ljava/lang/Object;)Z
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Main;->isSelfProfile(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$maybeBumpChannelGifts(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/SyncClient;Ljava/lang/Object;)V
    .registers 3

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Main;->maybeBumpChannelGifts(Lcom/chimeranft/core/SyncClient;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$notifyVisualBalanceChanged(Lcom/chimeranft/core/Main;)V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->notifyVisualBalanceChanged()V

    return-void
.end method

.method public static final synthetic access$notifyVisualBalanceChangedOnUi(Lcom/chimeranft/core/Main;)V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->notifyVisualBalanceChangedOnUi()V

    return-void
.end method

.method public static final synthetic access$onProfileResume(Lcom/chimeranft/core/Main;Ljava/lang/Object;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Main;->onProfileResume(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$onScrollState(Lcom/chimeranft/core/Main;Ljava/lang/Object;IZ)V
    .registers 4

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/Main;->onScrollState(Ljava/lang/Object;IZ)V

    return-void
.end method

.method public static final synthetic access$openScrollWindow(Lcom/chimeranft/core/Main;JZ)V
    .registers 4

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/Main;->openScrollWindow(JZ)V

    return-void
.end method

.method public static final synthetic access$queueRestamp(Lcom/chimeranft/core/Main;JZ)V
    .registers 4

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/Main;->queueRestamp(JZ)V

    return-void
.end method

.method public static final synthetic access$reapplySelfIdentityAfterEdit(Lcom/chimeranft/core/Main;)V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->reapplySelfIdentityAfterEdit()V

    return-void
.end method

.method public static final synthetic access$refresh(Lcom/chimeranft/core/Main;)V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->refresh()V

    return-void
.end method

.method public static final synthetic access$restampVisibleChatCells(Lcom/chimeranft/core/Main;[JI)V
    .registers 3

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Main;->restampVisibleChatCells([JI)V

    return-void
.end method

.method public static final synthetic access$scheduleFlingWatchdog(Lcom/chimeranft/core/Main;)V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->scheduleFlingWatchdog()V

    return-void
.end method

.method public static final synthetic access$scheduleHookInstall(Lcom/chimeranft/core/Main;)V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->scheduleHookInstall()V

    return-void
.end method

.method public static final synthetic access$scheduleProfilePrewarm(Lcom/chimeranft/core/Main;JLorg/json/JSONObject;)V
    .registers 4

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/chimeranft/core/Main;->scheduleProfilePrewarm(JLorg/json/JSONObject;)V

    return-void
.end method

.method public static final synthetic access$scheduleProfileRestamp(Lcom/chimeranft/core/Main;Ljava/lang/Object;JJJ)V
    .registers 8

    .line 20
    invoke-direct/range {p0 .. p7}, Lcom/chimeranft/core/Main;->scheduleProfileRestamp(Ljava/lang/Object;JJJ)V

    return-void
.end method

.method public static final synthetic access$setAccessDeniedCallback$cp(Ljava/lang/Runnable;)V
    .registers 1

    .line 20
    sput-object p0, Lcom/chimeranft/core/Main;->accessDeniedCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$setAccessDeniedDecision$cp(Ljava/lang/String;)V
    .registers 1

    .line 20
    sput-object p0, Lcom/chimeranft/core/Main;->accessDeniedDecision:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setAccessUsername$cp(Ljava/lang/String;)V
    .registers 1

    .line 20
    sput-object p0, Lcom/chimeranft/core/Main;->accessUsername:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setAccountCheckDue$p(Lcom/chimeranft/core/Main;Z)V
    .registers 2

    .line 20
    iput-boolean p1, p0, Lcom/chimeranft/core/Main;->accountCheckDue:Z

    return-void
.end method

.method public static final synthetic access$setAccountPollsCold$cp(J)V
    .registers 2

    .line 20
    sput-wide p0, Lcom/chimeranft/core/Main;->accountPollsCold:J

    return-void
.end method

.method public static final synthetic access$setAccountPollsHot$cp(J)V
    .registers 2

    .line 20
    sput-wide p0, Lcom/chimeranft/core/Main;->accountPollsHot:J

    return-void
.end method

.method public static final synthetic access$setActiveChatFragment$p(Lcom/chimeranft/core/Main;Ljava/lang/ref/WeakReference;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->activeChatFragment:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic access$setActiveProfileActivity$p(Lcom/chimeranft/core/Main;Ljava/lang/Object;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->activeProfileActivity:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$setActiveProfileGeneration$p(Lcom/chimeranft/core/Main;J)V
    .registers 3

    .line 20
    iput-wide p1, p0, Lcom/chimeranft/core/Main;->activeProfileGeneration:J

    return-void
.end method

.method public static final synthetic access$setBadgeHookRetryPending$p(Lcom/chimeranft/core/Main;Z)V
    .registers 2

    .line 20
    iput-boolean p1, p0, Lcom/chimeranft/core/Main;->badgeHookRetryPending:Z

    return-void
.end method

.method public static final synthetic access$setBadges$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/Badges;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;

    return-void
.end method

.method public static final synthetic access$setBotVerifIconSlot$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/HookSlot;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->botVerifIconSlot:Lcom/chimeranft/core/HookSlot;

    return-void
.end method

.method public static final synthetic access$setChatBroadcastDormant$p(Lcom/chimeranft/core/Main;Z)V
    .registers 2

    .line 20
    iput-boolean p1, p0, Lcom/chimeranft/core/Main;->chatBroadcastDormant:Z

    return-void
.end method

.method public static final synthetic access$setChatCreateUnhook$p(Lcom/chimeranft/core/Main;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->chatCreateUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method public static final synthetic access$setChatIdentityGeneration$p(Lcom/chimeranft/core/Main;J)V
    .registers 3

    .line 20
    iput-wide p1, p0, Lcom/chimeranft/core/Main;->chatIdentityGeneration:J

    return-void
.end method

.method public static final synthetic access$setChatPauseUnhook$p(Lcom/chimeranft/core/Main;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->chatPauseUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method public static final synthetic access$setChatPendingAuthorCount$p(Lcom/chimeranft/core/Main;I)V
    .registers 2

    .line 20
    iput p1, p0, Lcom/chimeranft/core/Main;->chatPendingAuthorCount:I

    return-void
.end method

.method public static final synthetic access$setChatPrefetchFlushArmed$p(Lcom/chimeranft/core/Main;Z)V
    .registers 2

    .line 20
    iput-boolean p1, p0, Lcom/chimeranft/core/Main;->chatPrefetchFlushArmed:Z

    return-void
.end method

.method public static final synthetic access$setChatPrepareNeedsAfterPass$p(Lcom/chimeranft/core/Main;Z)V
    .registers 2

    .line 20
    iput-boolean p1, p0, Lcom/chimeranft/core/Main;->chatPrepareNeedsAfterPass:Z

    return-void
.end method

.method public static final synthetic access$setChatResumeUnhook$p(Lcom/chimeranft/core/Main;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->chatResumeUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method public static final synthetic access$setChatScrollDeferrals$p(Lcom/chimeranft/core/Main;J)V
    .registers 3

    .line 20
    iput-wide p1, p0, Lcom/chimeranft/core/Main;->chatScrollDeferrals:J

    return-void
.end method

.method public static final synthetic access$setChatScrolling$p(Lcom/chimeranft/core/Main;Z)V
    .registers 2

    .line 20
    iput-boolean p1, p0, Lcom/chimeranft/core/Main;->chatScrolling:Z

    return-void
.end method

.method public static final synthetic access$setChatViewUnhook$p(Lcom/chimeranft/core/Main;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->chatViewUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method public static final synthetic access$setCrashHandler$cp(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 1

    .line 20
    sput-object p0, Lcom/chimeranft/core/Main;->crashHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public static final synthetic access$setCrashHandlerInstalled$cp(Z)V
    .registers 1

    .line 20
    sput-boolean p0, Lcom/chimeranft/core/Main;->crashHandlerInstalled:Z

    return-void
.end method

.method public static final synthetic access$setCurrentSlot$p(Lcom/chimeranft/core/Main;I)V
    .registers 2

    .line 20
    iput p1, p0, Lcom/chimeranft/core/Main;->currentSlot:I

    return-void
.end method

.method public static final synthetic access$setDataDir$p(Lcom/chimeranft/core/Main;Ljava/lang/String;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->dataDir:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setDeferArmedAtMs$cp(J)V
    .registers 2

    .line 20
    sput-wide p0, Lcom/chimeranft/core/Main;->deferArmedAtMs:J

    return-void
.end method

.method public static final synthetic access$setDeferredDrainArmed$cp(Z)V
    .registers 1

    .line 20
    sput-boolean p0, Lcom/chimeranft/core/Main;->deferredDrainArmed:Z

    return-void
.end method

.method public static final synthetic access$setDeferredRepaintDrops$cp(J)V
    .registers 2

    .line 20
    sput-wide p0, Lcom/chimeranft/core/Main;->deferredRepaintDrops:J

    return-void
.end method

.method public static final synthetic access$setDialogCellBadgeUnhook$p(Lcom/chimeranft/core/Main;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->dialogCellBadgeUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method public static final synthetic access$setEmojiFreezeSlot$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/HookSlot;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->emojiFreezeSlot:Lcom/chimeranft/core/HookSlot;

    return-void
.end method

.method public static final synthetic access$setExteraBadgeSlot$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/HookSlot;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->exteraBadgeSlot:Lcom/chimeranft/core/HookSlot;

    return-void
.end method

.method public static final synthetic access$setExteraBadgeSourceSlot$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/HookSlot;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->exteraBadgeSourceSlot:Lcom/chimeranft/core/HookSlot;

    return-void
.end method

.method public static final synthetic access$setExteraBulletinSlot$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/HookSlot;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->exteraBulletinSlot:Lcom/chimeranft/core/HookSlot;

    return-void
.end method

.method public static final synthetic access$setExteraControllerHooksSettled$p(Lcom/chimeranft/core/Main;Z)V
    .registers 2

    .line 20
    iput-boolean p1, p0, Lcom/chimeranft/core/Main;->exteraControllerHooksSettled:Z

    return-void
.end method

.method public static final synthetic access$setExteraSecondaryRuleSlot$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/HookSlot;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->exteraSecondaryRuleSlot:Lcom/chimeranft/core/HookSlot;

    return-void
.end method

.method public static final synthetic access$setExteraSecondarySlot$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/HookSlot;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->exteraSecondarySlot:Lcom/chimeranft/core/HookSlot;

    return-void
.end method

.method public static final synthetic access$setExteraSourceHookSettled$p(Lcom/chimeranft/core/Main;Z)V
    .registers 2

    .line 20
    iput-boolean p1, p0, Lcom/chimeranft/core/Main;->exteraSourceHookSettled:Z

    return-void
.end method

.method public static final synthetic access$setFlingPassActive$p(Lcom/chimeranft/core/Main;Z)V
    .registers 2

    .line 20
    iput-boolean p1, p0, Lcom/chimeranft/core/Main;->flingPassActive:Z

    return-void
.end method

.method public static final synthetic access$setFlingUnhooked$p(Lcom/chimeranft/core/Main;Z)V
    .registers 2

    .line 20
    iput-boolean p1, p0, Lcom/chimeranft/core/Main;->flingUnhooked:Z

    return-void
.end method

.method public static final synthetic access$setGetChatFullUnhook$p(Lcom/chimeranft/core/Main;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->getChatFullUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method public static final synthetic access$setGetChatSlot$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/HookSlot;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->getChatSlot:Lcom/chimeranft/core/HookSlot;

    return-void
.end method

.method public static final synthetic access$setGetUserFullUnhook$p(Lcom/chimeranft/core/Main;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->getUserFullUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method public static final synthetic access$setGetUserSlot$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/HookSlot;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->getUserSlot:Lcom/chimeranft/core/HookSlot;

    return-void
.end method

.method public static final synthetic access$setGiftHook$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/GiftHook;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;

    return-void
.end method

.method public static final synthetic access$setGiftReveal$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/GiftReveal;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->giftReveal:Lcom/chimeranft/core/GiftReveal;

    return-void
.end method

.method public static final synthetic access$setGiftStatus$p(Lcom/chimeranft/core/Main;Ljava/lang/String;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->giftStatus:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setGramIconPath$cp(Ljava/lang/String;)V
    .registers 1

    .line 20
    sput-object p0, Lcom/chimeranft/core/Main;->gramIconPath:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setHookStatus$p(Lcom/chimeranft/core/Main;Ljava/lang/String;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->hookStatus:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setIdentity$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/Identity;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;

    return-void
.end method

.method public static final synthetic access$setInstance$cp(Lcom/chimeranft/core/Main;)V
    .registers 1

    .line 20
    sput-object p0, Lcom/chimeranft/core/Main;->instance:Lcom/chimeranft/core/Main;

    return-void
.end method

.method public static final synthetic access$setLastCrashReport$cp(Ljava/lang/String;)V
    .registers 1

    .line 20
    sput-object p0, Lcom/chimeranft/core/Main;->lastCrashReport:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setLastPreparedMessage$p(Lcom/chimeranft/core/Main;Ljava/lang/Object;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->lastPreparedMessage:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$setNotifier$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/Notifier;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->notifier:Lcom/chimeranft/core/Notifier;

    return-void
.end method

.method public static final synthetic access$setPerformance$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/PerformanceGovernor;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->performance:Lcom/chimeranft/core/PerformanceGovernor;

    return-void
.end method

.method public static final synthetic access$setPrefetchExec$p(Lcom/chimeranft/core/Main;Ljava/util/concurrent/ExecutorService;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->prefetchExec:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static final synthetic access$setPreviousCrashHandler$cp(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .registers 1

    .line 20
    sput-object p0, Lcom/chimeranft/core/Main;->previousCrashHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public static final synthetic access$setProfileCreateUnhook$p(Lcom/chimeranft/core/Main;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->profileCreateUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method public static final synthetic access$setProfileDataUnhook$p(Lcom/chimeranft/core/Main;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->profileDataUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method public static final synthetic access$setProfilePauseUnhook$p(Lcom/chimeranft/core/Main;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->profilePauseUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method public static final synthetic access$setProfilePrepareExecutor$p(Lcom/chimeranft/core/Main;Ljava/util/concurrent/ExecutorService;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->profilePrepareExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static final synthetic access$setProfileResumeUnhook$p(Lcom/chimeranft/core/Main;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->profileResumeUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method public static final synthetic access$setProfileTabsUnhook$p(Lcom/chimeranft/core/Main;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->profileTabsUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method public static final synthetic access$setProfileViewUnhook$p(Lcom/chimeranft/core/Main;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->profileViewUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method public static final synthetic access$setRealId$p(Lcom/chimeranft/core/Main;J)V
    .registers 3

    .line 20
    iput-wide p1, p0, Lcom/chimeranft/core/Main;->realId:J

    return-void
.end method

.method public static final synthetic access$setRemote$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/RemoteIdentity;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->remote:Lcom/chimeranft/core/RemoteIdentity;

    return-void
.end method

.method public static final synthetic access$setRestampAll$cp(Z)V
    .registers 1

    .line 20
    sput-boolean p0, Lcom/chimeranft/core/Main;->restampAll:Z

    return-void
.end method

.method public static final synthetic access$setRestampArmed$cp(Z)V
    .registers 1

    .line 20
    sput-boolean p0, Lcom/chimeranft/core/Main;->restampArmed:Z

    return-void
.end method

.method public static final synthetic access$setRestampCount$cp(I)V
    .registers 1

    .line 20
    sput p0, Lcom/chimeranft/core/Main;->restampCount:I

    return-void
.end method

.method public static final synthetic access$setRunOnUiThread$cp(Ljava/lang/reflect/Method;)V
    .registers 1

    .line 20
    sput-object p0, Lcom/chimeranft/core/Main;->runOnUiThread:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static final synthetic access$setRunOnUiThreadResolved$cp(Z)V
    .registers 1

    .line 20
    sput-boolean p0, Lcom/chimeranft/core/Main;->runOnUiThreadResolved:Z

    return-void
.end method

.method public static final synthetic access$setScrollPollScheduled$p(Lcom/chimeranft/core/Main;Z)V
    .registers 2

    .line 20
    iput-boolean p1, p0, Lcom/chimeranft/core/Main;->scrollPollScheduled:Z

    return-void
.end method

.method public static final synthetic access$setScrollWindow(Lcom/chimeranft/core/Main;J)V
    .registers 3

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Main;->setScrollWindow(J)V

    return-void
.end method

.method public static final synthetic access$setScrollingList$p(Lcom/chimeranft/core/Main;Ljava/lang/ref/WeakReference;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->scrollingList:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic access$setSelectedAccountField$p(Lcom/chimeranft/core/Main;Ljava/lang/reflect/Field;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->selectedAccountField:Ljava/lang/reflect/Field;

    return-void
.end method

.method public static final synthetic access$setSelectedAccountFieldResolved$p(Lcom/chimeranft/core/Main;Z)V
    .registers 2

    .line 20
    iput-boolean p1, p0, Lcom/chimeranft/core/Main;->selectedAccountFieldResolved:Z

    return-void
.end method

.method public static final synthetic access$setSelfUserAppliedRevision$p(Lcom/chimeranft/core/Main;J)V
    .registers 3

    .line 20
    iput-wide p1, p0, Lcom/chimeranft/core/Main;->selfUserAppliedRevision:J

    return-void
.end method

.method public static final synthetic access$setSelfUserCached$p(Lcom/chimeranft/core/Main;Ljava/lang/Object;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->selfUserCached:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$setStore$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/Store;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;

    return-void
.end method

.method public static final synthetic access$setSupporterBulletinActionUnhook$p(Lcom/chimeranft/core/Main;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->supporterBulletinActionUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method public static final synthetic access$setSupporterDeepLinkUnhook$p(Lcom/chimeranft/core/Main;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->supporterDeepLinkUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method public static final synthetic access$setSupporterHooksInstalled$p(Lcom/chimeranft/core/Main;Z)V
    .registers 2

    .line 20
    iput-boolean p1, p0, Lcom/chimeranft/core/Main;->supporterHooksInstalled:Z

    return-void
.end method

.method public static final synthetic access$setSupporterPopupCallback$cp(Ljava/lang/Runnable;)V
    .registers 1

    .line 20
    sput-object p0, Lcom/chimeranft/core/Main;->supporterPopupCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$setSupporterScanAttempts$p(Lcom/chimeranft/core/Main;I)V
    .registers 2

    .line 20
    iput p1, p0, Lcom/chimeranft/core/Main;->supporterScanAttempts:I

    return-void
.end method

.method public static final synthetic access$setSync$p(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/SyncClient;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;

    return-void
.end method

.method public static final synthetic access$setTypingWindowUnhook$p(Lcom/chimeranft/core/Main;Lde/robv/android/xposed/XC_MethodHook$Unhook;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/chimeranft/core/Main;->typingWindowUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    return-void
.end method

.method public static final synthetic access$setUiScrollDeferrals$p(Lcom/chimeranft/core/Main;J)V
    .registers 3

    .line 20
    iput-wide p1, p0, Lcom/chimeranft/core/Main;->uiScrollDeferrals:J

    return-void
.end method

.method public static final synthetic access$setUiScrollUntilMs$p(Lcom/chimeranft/core/Main;J)V
    .registers 3

    .line 20
    iput-wide p1, p0, Lcom/chimeranft/core/Main;->uiScrollUntilMs:J

    return-void
.end method

.method public static final synthetic access$setUiScrolling$p(Lcom/chimeranft/core/Main;Z)V
    .registers 2

    .line 20
    iput-boolean p1, p0, Lcom/chimeranft/core/Main;->uiScrolling:Z

    return-void
.end method

.method public static final synthetic access$setUiTransitionDeferrals$p(Lcom/chimeranft/core/Main;J)V
    .registers 3

    .line 20
    iput-wide p1, p0, Lcom/chimeranft/core/Main;->uiTransitionDeferrals:J

    return-void
.end method

.method public static final synthetic access$setUiTransitionDepth$p(Lcom/chimeranft/core/Main;I)V
    .registers 2

    .line 20
    iput p1, p0, Lcom/chimeranft/core/Main;->uiTransitionDepth:I

    return-void
.end method

.method public static final synthetic access$setUiTransitionUntilMs$p(Lcom/chimeranft/core/Main;J)V
    .registers 3

    .line 20
    iput-wide p1, p0, Lcom/chimeranft/core/Main;->uiTransitionUntilMs:J

    return-void
.end method

.method public static final synthetic access$setUiTyping$p(Lcom/chimeranft/core/Main;Z)V
    .registers 2

    .line 20
    iput-boolean p1, p0, Lcom/chimeranft/core/Main;->uiTyping:Z

    return-void
.end method

.method public static final synthetic access$setUiTypingDeferrals$p(Lcom/chimeranft/core/Main;J)V
    .registers 3

    .line 20
    iput-wide p1, p0, Lcom/chimeranft/core/Main;->uiTypingDeferrals:J

    return-void
.end method

.method public static final synthetic access$setUiTypingUntilMs$p(Lcom/chimeranft/core/Main;J)V
    .registers 3

    .line 20
    iput-wide p1, p0, Lcom/chimeranft/core/Main;->uiTypingUntilMs:J

    return-void
.end method

.method public static final synthetic access$startScrollPoll(Lcom/chimeranft/core/Main;)V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->startScrollPoll()V

    return-void
.end method

.method public static final accessClientId()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->accessClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final declared-synchronized accessClientId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/chimeranft/core/Main;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v1, p0}, Lcom/chimeranft/core/Main$Companion;->accessClientId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    .line 3927
    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p0
.end method

.method public static final addGift(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->addGift(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final addGifts(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->addGifts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final addPendingAuthor(J)V
    .registers 9

    .line 1619
    iget v0, p0, Lcom/chimeranft/core/Main;->chatPendingAuthorCount:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_12

    .line 1620
    iget-object v3, p0, Lcom/chimeranft/core/Main;->chatPendingAuthorRing:[J

    aget-wide v4, v3, v2

    cmp-long v3, v4, p1

    if-nez v3, :cond_f

    return-void

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1621
    :cond_12
    iget-object v2, p0, Lcom/chimeranft/core/Main;->chatPendingAuthorRing:[J

    array-length v3, v2

    if-lt v0, v3, :cond_1d

    .line 1624
    array-length v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 1625
    invoke-static {v2, v0, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1628
    :cond_1d
    iget-object v1, p0, Lcom/chimeranft/core/Main;->chatPendingAuthorRing:[J

    aput-wide p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 1629
    iput v0, p0, Lcom/chimeranft/core/Main;->chatPendingAuthorCount:I

    return-void
.end method

.method private final applyOfferEvent(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z
    .registers 35

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 3177
    const-string v3, "accepted"

    const-string v4, ""

    const/4 v5, 0x0

    .line 3179
    :try_start_b
    iget-object v6, v1, Lcom/chimeranft/core/Main;->giftReveal:Lcom/chimeranft/core/GiftReveal;

    const/16 v17, 0x1

    if-nez v6, :cond_12

    return v17

    .line 3180
    :cond_12
    const-string v7, "b64"

    invoke-virtual {v2, v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3181
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_1f

    return v17

    .line 3182
    :cond_1f
    const-string v8, "sender_id"

    const-wide/16 v9, 0x0

    invoke-virtual {v0, v8, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v25

    .line 3183
    const-string v8, "stars"

    invoke-virtual {v0, v8, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v19

    .line 3184
    const-string v8, "nanoton"

    invoke-virtual {v0, v8, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 3185
    const-string v8, "gift_offer"

    move-object/from16 v11, p3

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_3b
    .catchall {:try_start_b .. :try_end_3b} :catchall_52

    const-string v11, "offer_id"

    if-eqz v8, :cond_55

    .line 3188
    :try_start_3f
    const-string v2, "expires_at"

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    .line 3189
    invoke-virtual {v0, v11, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/4 v15, 0x0

    move-wide/from16 v10, v19

    move-wide/from16 v8, v25

    .line 3188
    invoke-virtual/range {v6 .. v16}, Lcom/chimeranft/core/GiftReveal;->showOffer(Ljava/lang/String;JJJIZLjava/lang/String;)V

    return v17

    :catchall_52
    move-exception v0

    goto/16 :goto_c1

    .line 3192
    :cond_55
    const-string v8, "offer_status"

    invoke-virtual {v0, v8, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3195
    invoke-virtual {v0, v11, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    invoke-virtual {v6, v11, v14}, Lcom/chimeranft/core/GiftReveal;->markOfferAnsweredById(Ljava/lang/String;Z)V

    .line 3196
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 3200
    iget-object v3, v1, Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;

    if-eqz v3, :cond_79

    cmp-long v8, v19, v9

    if-gtz v8, :cond_7d

    cmp-long v8, v12, v9

    if-lez v8, :cond_79

    goto :goto_7d

    :cond_79
    :goto_79
    move-wide v10, v12

    move-wide/from16 v8, v19

    goto :goto_bd

    .line 3204
    :cond_7d
    :goto_7d
    const-string v8, "title"

    const-string v9, "NFT"

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 3205
    const-string v2, "sender_name"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    iget-wide v8, v1, Lcom/chimeranft/core/Main;->realId:J

    const-string v30, ""

    move-object/from16 v18, v3

    move-object/from16 v23, v7

    move-wide/from16 v28, v8

    move-wide/from16 v21, v12

    .line 3203
    invoke-virtual/range {v18 .. v30}, Lcom/chimeranft/core/Store;->spendVisualBalance(JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-wide/from16 v12, v21

    move-object/from16 v7, v23

    .line 3206
    const-string v2, "FAIL"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v5, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "charge failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/Main;->lastOfferResult:Ljava/lang/String;

    goto :goto_79

    .line 3210
    :goto_bd
    invoke-virtual/range {v6 .. v11}, Lcom/chimeranft/core/GiftReveal;->showPurchase(Ljava/lang/String;JJ)V
    :try_end_c0
    .catchall {:try_start_3f .. :try_end_c0} :catchall_52

    :cond_c0
    return v17

    .line 3216
    :goto_c1
    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offerEvent FAIL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/Main;->lastOfferResult:Ljava/lang/String;

    return v5
.end method

.method private final applySelfIdentityForCell()V
    .registers 8

    .line 2875
    iget-object v0, p0, Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;

    if-eqz v0, :cond_2c

    .line 2876
    invoke-virtual {v0}, Lcom/chimeranft/core/Identity;->hasOverrides()Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_2c

    .line 2877
    :cond_b
    invoke-virtual {v0}, Lcom/chimeranft/core/Identity;->revision()J

    move-result-wide v1

    .line 2878
    iget-object v3, p0, Lcom/chimeranft/core/Main;->selfUserCached:Ljava/lang/Object;

    if-eqz v3, :cond_1a

    .line 2879
    iget-wide v4, p0, Lcom/chimeranft/core/Main;->selfUserAppliedRevision:J

    cmp-long v6, v4, v1

    if-nez v6, :cond_1a

    goto :goto_2c

    :cond_1a
    if-nez v3, :cond_27

    .line 2882
    iget-wide v3, p0, Lcom/chimeranft/core/Main;->realId:J

    invoke-direct {p0, v3, v4}, Lcom/chimeranft/core/Main;->cachedUserFor(J)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_25

    goto :goto_2c

    .line 2884
    :cond_25
    iput-object v3, p0, Lcom/chimeranft/core/Main;->selfUserCached:Ljava/lang/Object;

    .line 2886
    :cond_27
    invoke-virtual {v0, v3}, Lcom/chimeranft/core/Identity;->applyAll(Ljava/lang/Object;)Z

    .line 2887
    iput-wide v1, p0, Lcom/chimeranft/core/Main;->selfUserAppliedRevision:J

    :cond_2c
    :goto_2c
    return-void
.end method

.method private final armEmojiFreezeSlot(Z)V
    .registers 3

    .line 1176
    iget-object v0, p0, Lcom/chimeranft/core/Main;->emojiFreezeSlot:Lcom/chimeranft/core/HookSlot;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_b

    .line 1178
    invoke-virtual {v0}, Lcom/chimeranft/core/HookSlot;->install()Z

    return-void

    :cond_b
    invoke-virtual {v0}, Lcom/chimeranft/core/HookSlot;->remove()Z

    return-void
.end method

.method private final beginFlingPass(Z)V
    .registers 12

    .line 1503
    iget-boolean v0, p0, Lcom/chimeranft/core/Main;->flingPassActive:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    if-eqz p1, :cond_10

    .line 1505
    iget-boolean p1, p0, Lcom/chimeranft/core/Main;->flingPassHasChat:Z

    if-nez p1, :cond_10

    .line 1507
    iput-boolean v1, p0, Lcom/chimeranft/core/Main;->flingPassHasChat:Z

    .line 1508
    invoke-direct {p0, v1}, Lcom/chimeranft/core/Main;->armEmojiFreezeSlot(Z)V

    :cond_10
    return-void

    .line 1512
    :cond_11
    iput-boolean v1, p0, Lcom/chimeranft/core/Main;->flingPassActive:Z

    .line 1513
    iput-boolean p1, p0, Lcom/chimeranft/core/Main;->flingPassHasChat:Z

    if-eqz p1, :cond_1a

    .line 1520
    invoke-direct {p0, v1}, Lcom/chimeranft/core/Main;->armEmojiFreezeSlot(Z)V

    .line 1521
    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1522
    invoke-static {v1}, Lcom/chimeranft/core/Tuning;->optionEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_58

    .line 1526
    iget-wide v4, p0, Lcom/chimeranft/core/Main;->lastUnhookCycleMs:J

    sub-long v4, v2, v4

    sget-wide v6, Lcom/chimeranft/core/Main;->UNHOOK_CYCLE_MIN_MS:J

    const-wide/16 v8, 0x1

    cmp-long p1, v4, v6

    if-gez p1, :cond_36

    .line 1528
    iget-wide v0, p0, Lcom/chimeranft/core/Main;->unhookSkippedCycles:J

    add-long/2addr v0, v8

    iput-wide v0, p0, Lcom/chimeranft/core/Main;->unhookSkippedCycles:J

    goto :goto_58

    .line 1532
    :cond_36
    iput-wide v2, p0, Lcom/chimeranft/core/Main;->lastUnhookCycleMs:J

    .line 1533
    iget-wide v2, p0, Lcom/chimeranft/core/Main;->unhookCycles:J

    add-long/2addr v2, v8

    iput-wide v2, p0, Lcom/chimeranft/core/Main;->unhookCycles:J

    .line 1534
    iput-boolean v1, p0, Lcom/chimeranft/core/Main;->flingUnhooked:Z

    .line 1535
    iget-object p1, p0, Lcom/chimeranft/core/Main;->flingSlots:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_46
    if-ge v0, p1, :cond_58

    .line 1537
    iget-object v1, p0, Lcom/chimeranft/core/Main;->flingSlots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chimeranft/core/HookSlot;

    if-eqz v1, :cond_55

    .line 1538
    invoke-virtual {v1}, Lcom/chimeranft/core/HookSlot;->remove()Z

    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 1542
    :cond_58
    :goto_58
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->scheduleFlingWatchdog()V

    return-void
.end method

.method private final cachedMessageSenderUserId(Ljava/lang/Object;)J
    .registers 4

    .line 2031
    iget-object v0, p0, Lcom/chimeranft/core/Main;->cellStamps:Lcom/chimeranft/core/CellStamps;

    sget-object v1, Lcom/chimeranft/core/Main;->SENDER_RESOLVER:Lcom/chimeranft/core/Main$Companion$SENDER_RESOLVER$1;

    invoke-virtual {v0, p1, v1}, Lcom/chimeranft/core/CellStamps;->senderUid(Ljava/lang/Object;Lcom/chimeranft/core/CellStamps$UidResolver;)J

    move-result-wide v0

    return-wide v0
.end method

.method private final cachedUserFor(J)Ljava/lang/Object;
    .registers 10

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-gtz v3, :cond_8

    return-object v2

    .line 2849
    :cond_8
    iget-object v0, p0, Lcom/chimeranft/core/Main;->selfCallThread:Ljava/lang/Thread;

    .line 2850
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Lcom/chimeranft/core/Main;->selfCallThread:Ljava/lang/Thread;

    .line 2853
    :try_start_10
    sget-object v1, Lcom/chimeranft/core/Main;->UC_CLS:Ljava/lang/String;

    const-string v3, "selectedAccount"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 2854
    invoke-direct {p0, v1}, Lcom/chimeranft/core/Main;->messagesControllerFor(I)Ljava/lang/Object;

    move-result-object v1

    .line 2855
    iget-object v3, p0, Lcom/chimeranft/core/Main;->controllerGetUser:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_4b

    if-nez v3, :cond_24

    goto :goto_4b

    .line 2857
    :cond_24
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v4

    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 2862
    iget-object v3, p0, Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;

    if-eqz v3, :cond_48

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, p1, p2}, Lcom/chimeranft/core/Badges;->hasUser(J)Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, p0, Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v1, p1, p2}, Lcom/chimeranft/core/Badges;->applyForId(Ljava/lang/Object;J)Z
    :try_end_48
    .catchall {:try_start_10 .. :try_end_48} :catchall_4e

    .line 2870
    :cond_48
    iput-object v0, p0, Lcom/chimeranft/core/Main;->selfCallThread:Ljava/lang/Thread;

    return-object v1

    :cond_4b
    :goto_4b
    iput-object v0, p0, Lcom/chimeranft/core/Main;->selfCallThread:Ljava/lang/Thread;

    return-object v2

    :catchall_4e
    iput-object v0, p0, Lcom/chimeranft/core/Main;->selfCallThread:Ljava/lang/Thread;

    return-object v2
.end method

.method private final chatVisualToken()J
    .registers 7

    .line 1748
    iget-object v0, p0, Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    goto :goto_c

    :cond_7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v0, v0, Lcom/chimeranft/core/Badges;->version:J

    .line 1749
    :goto_c
    iget-wide v2, p0, Lcom/chimeranft/core/Main;->chatIdentityGeneration:J

    const-wide v4, -0x61c8864680b583ebL

    mul-long v2, v2, v4

    const/16 v4, 0x11

    shl-long/2addr v0, v4

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private final clientUserIdForSlot(I)J
    .registers 8

    .line 461
    :try_start_0
    sget-object v0, Lcom/chimeranft/core/Main;->UC_CLS:Ljava/lang/String;

    const-string v1, "getInstance"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 462
    const-string v0, "getClientUserId"

    sget-object v1, Lcom/chimeranft/core/Refl;->NO_SIG:[Ljava/lang/Class;

    sget-object v2, Lcom/chimeranft/core/Refl;->NO_ARGS:[Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 463
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2d

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0
    :try_end_2c
    .catchall {:try_start_0 .. :try_end_2c} :catchall_2d

    return-wide v0

    .line 467
    :catchall_2d
    :cond_2d
    iget-wide v0, p0, Lcom/chimeranft/core/Main;->realId:J

    return-wide v0
.end method

.method private final closeScrollWindows()V
    .registers 4

    const-wide/16 v0, 0x0

    .line 1444
    invoke-direct {p0, v0, v1}, Lcom/chimeranft/core/Main;->setScrollWindow(J)V

    const/4 v2, 0x0

    .line 1445
    iput-boolean v2, p0, Lcom/chimeranft/core/Main;->uiScrolling:Z

    .line 1446
    iput-wide v0, p0, Lcom/chimeranft/core/Main;->uiScrollUntilMs:J

    const/4 v0, 0x0

    .line 1447
    iput-object v0, p0, Lcom/chimeranft/core/Main;->scrollingList:Ljava/lang/ref/WeakReference;

    .line 1448
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->endFlingPass()V

    .line 1449
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->drainDeferredChatCells()V

    return-void
.end method

.method private final configureIdentityFromStore()V
    .registers 18

    move-object/from16 v0, p0

    .line 335
    iget-object v1, v0, Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 336
    iget-object v2, v0, Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/chimeranft/core/Store;->isWearActive()Z

    move-result v2

    iget-object v3, v0, Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/chimeranft/core/Store;->getWearCollectibleId()J

    move-result-wide v3

    iget-object v5, v0, Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/chimeranft/core/Store;->getWearStatusData()Lorg/json/JSONObject;

    move-result-object v5

    .line 337
    iget-object v6, v0, Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/chimeranft/core/Store;->isNftUsernameEnabledRaw()Z

    move-result v6

    iget-object v7, v0, Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lcom/chimeranft/core/Store;->getNftUsernames()[Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/chimeranft/core/Store;->isReplaceOriginalUsernames()Z

    move-result v8

    .line 338
    iget-object v9, v0, Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Lcom/chimeranft/core/Store;->isNftNumberEnabledRaw()Z

    move-result v9

    iget-object v10, v0, Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v10}, Lcom/chimeranft/core/Store;->getNftNumbers()[Ljava/lang/String;

    move-result-object v10

    .line 339
    iget-object v11, v0, Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11}, Lcom/chimeranft/core/Store;->isLocalRatingActive()Z

    move-result v11

    iget-object v12, v0, Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v12}, Lcom/chimeranft/core/Store;->getLocalRatingValue()I

    move-result v12

    .line 340
    iget-object v13, v0, Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v13}, Lcom/chimeranft/core/Store;->getLocalRatingLevel()I

    move-result v13

    iget-object v14, v0, Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v14}, Lcom/chimeranft/core/Store;->getLocalRatingNextGoal()I

    move-result v14

    .line 341
    iget-object v15, v0, Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v15}, Lcom/chimeranft/core/Store;->isLocalPremiumEnabled()Z

    move-result v16

    const/4 v15, 0x0

    .line 335
    invoke-virtual/range {v1 .. v16}, Lcom/chimeranft/core/Identity;->configure(ZJLorg/json/JSONObject;Z[Ljava/lang/String;ZZ[Ljava/lang/String;ZIIIIZ)V

    .line 342
    iget v1, v0, Lcom/chimeranft/core/Main;->currentSlot:I

    iget-object v2, v0, Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/chimeranft/core/Store;->isLocalPremiumEnabled()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/chimeranft/core/LocalPremium;->apply(IZ)V

    return-void
.end method

.method public static final craftGifts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/Main$Companion;->craftGifts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final deferChatCell(Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_9

    .line 1600
    invoke-direct {p0, p3, p4}, Lcom/chimeranft/core/Main;->addPendingAuthor(J)V

    :cond_9
    if-eqz p1, :cond_21

    if-eqz p2, :cond_21

    .line 1602
    iget-object p3, p0, Lcom/chimeranft/core/Main;->chatPendingCells:Ljava/util/WeakHashMap;

    monitor-enter p3

    .line 1603
    :try_start_10
    iget-object p4, p0, Lcom/chimeranft/core/Main;->chatPendingCells:Ljava/util/WeakHashMap;

    invoke-virtual {p4, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1604
    iget-wide p1, p0, Lcom/chimeranft/core/Main;->chatDeferredCells:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/chimeranft/core/Main;->chatDeferredCells:J
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1e

    .line 1602
    monitor-exit p3

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p3

    throw p1

    :cond_21
    return-void
.end method

.method public static final deliverGiftBatch(Ljava/lang/String;J)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/chimeranft/core/Main$Companion;->deliverGiftBatch(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final directAfterChatMessage(Ljava/lang/Object;)V
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->directAfterChatMessage(Ljava/lang/Object;)V

    return-void
.end method

.method public static final directAfterChatResume(Ljava/lang/Object;)V
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->directAfterChatResume(Ljava/lang/Object;)V

    return-void
.end method

.method public static final directAfterGetChat(Ljava/lang/Object;)V
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->directAfterGetChat(Ljava/lang/Object;)V

    return-void
.end method

.method public static final directAfterGetChatFull(Ljava/lang/Object;J)V
    .registers 4

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/chimeranft/core/Main$Companion;->directAfterGetChatFull(Ljava/lang/Object;J)V

    return-void
.end method

.method public static final directAfterGetUser(Ljava/lang/Object;)V
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->directAfterGetUser(Ljava/lang/Object;)V

    return-void
.end method

.method public static final directAfterGetUserFull(Ljava/lang/Object;J)V
    .registers 4

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/chimeranft/core/Main$Companion;->directAfterGetUserFull(Ljava/lang/Object;J)V

    return-void
.end method

.method public static final directAfterProfileResume(Ljava/lang/Object;)V
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->directAfterProfileResume(Ljava/lang/Object;)V

    return-void
.end method

.method public static final directBeforeChatMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/Main$Companion;->directBeforeChatMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static final directBeforeChatPause(Ljava/lang/Object;)V
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->directBeforeChatPause(Ljava/lang/Object;)V

    return-void
.end method

.method public static final directBeforeDialogCell(Ljava/lang/Object;)V
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->directBeforeDialogCell(Ljava/lang/Object;)V

    return-void
.end method

.method public static final directBeforeProfileData(Ljava/lang/Object;)V
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->directBeforeProfileData(Ljava/lang/Object;)V

    return-void
.end method

.method public static final directBeforeProfilePause(Ljava/lang/Object;)V
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->directBeforeProfilePause(Ljava/lang/Object;)V

    return-void
.end method

.method public static final directBeforeProfileResume(Ljava/lang/Object;)V
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->directBeforeProfileResume(Ljava/lang/Object;)V

    return-void
.end method

.method public static final directBeforeProfileTabs(Ljava/lang/Object;)V
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->directBeforeProfileTabs(Ljava/lang/Object;)V

    return-void
.end method

.method public static final directBeforePutUser(Ljava/lang/Object;)V
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->directBeforePutUser(Ljava/lang/Object;)V

    return-void
.end method

.method public static final directGiftBalance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/Main$Companion;->directGiftBalance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final directGiftBalanceAvailable(Ljava/lang/Object;Z)Z
    .registers 3

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/Main$Companion;->directGiftBalanceAvailable(Ljava/lang/Object;Z)Z

    move-result p0

    return p0
.end method

.method public static final directGiftBuy(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/Object;)Z
    .registers 13

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/chimeranft/core/Main$Companion;->directGiftBuy(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final directGiftChatVisible(J)V
    .registers 3

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/Main$Companion;->directGiftChatVisible(J)V

    return-void
.end method

.method public static final directGiftResaleConfirm(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 15

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/chimeranft/core/Main$Companion;->directGiftResaleConfirm(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method public static final directGiftResaleForm(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/Object;)Z
    .registers 11

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/chimeranft/core/Main$Companion;->directGiftResaleForm(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final directGiftSendSheetBuy(Ljava/lang/Object;)Z
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->directGiftSendSheetBuy(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final directGiftSendSheetShown(Ljava/lang/Object;)V
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->directGiftSendSheetShown(Ljava/lang/Object;)V

    return-void
.end method

.method public static final directGiftSheetArg(Ljava/lang/Object;)V
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->directGiftSheetArg(Ljava/lang/Object;)V

    return-void
.end method

.method public static final directGiftSheetMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/Main$Companion;->directGiftSheetMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static final directGiftTransactionRow(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/Main$Companion;->directGiftTransactionRow(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static final directGiftTransfer(Ljava/lang/Object;JLjava/lang/Object;)Z
    .registers 5

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/chimeranft/core/Main$Companion;->directGiftTransfer(Ljava/lang/Object;JLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final directGiftVisualTransactions(Ljava/lang/Object;)V
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->directGiftVisualTransactions(Ljava/lang/Object;)V

    return-void
.end method

.method public static final directGramButtons(Z)Z
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->directGramButtons(Z)Z

    move-result p0

    return p0
.end method

.method public static final directGramScreen(Ljava/lang/Object;Z)V
    .registers 3

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/Main$Companion;->directGramScreen(Ljava/lang/Object;Z)V

    return-void
.end method

.method public static final directGramScreenCreated(Ljava/lang/Object;)V
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->directGramScreenCreated(Ljava/lang/Object;)V

    return-void
.end method

.method public static final directGramScreenUpdated(Ljava/lang/Object;)V
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->directGramScreenUpdated(Ljava/lang/Object;)V

    return-void
.end method

.method public static final directHost(ILjava/lang/Object;J)V
    .registers 5

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/chimeranft/core/Main$Companion;->directHost(ILjava/lang/Object;J)V

    return-void
.end method

.method public static final directIosCaptureSelection(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/Main$Companion;->directIosCaptureSelection(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static final directIosInputPanelRefresh(Ljava/lang/Object;)V
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->directIosInputPanelRefresh(Ljava/lang/Object;)V

    return-void
.end method

.method public static final directIosPrepareSelectionPopup(Ljava/lang/Object;)Z
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->directIosPrepareSelectionPopup(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final directIosSelectionDismiss(Ljava/lang/Object;Z)Z
    .registers 3

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/Main$Companion;->directIosSelectionDismiss(Ljava/lang/Object;Z)Z

    move-result p0

    return p0
.end method

.method public static final directIosSelectionDraw(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/Main$Companion;->directIosSelectionDraw(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static final directIosSelectionSwallowTouch(Ljava/lang/Object;)Z
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->directIosSelectionSwallowTouch(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final directNoteTyping()V
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->directNoteTyping()V

    return-void
.end method

.method public static final directPremiumGiftBuy(Ljava/lang/Object;)Z
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->directPremiumGiftBuy(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final directRepairPremiumAction(Ljava/lang/Object;)V
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->directRepairPremiumAction(Ljava/lang/Object;)V

    return-void
.end method

.method public static final directShouldSkipGiftInvalidate(J)Z
    .registers 3

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/Main$Companion;->directShouldSkipGiftInvalidate(J)Z

    move-result p0

    return p0
.end method

.method public static final directStickerLottieSave(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/chimeranft/core/Main$Companion;->directStickerLottieSave(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final directStickerPanelHeader(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 4

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/chimeranft/core/Main$Companion;->directStickerPanelHeader(Ljava/lang/Object;Ljava/lang/Object;I)V

    return-void
.end method

.method public static final directStickerPreviewMenu(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/Main$Companion;->directStickerPreviewMenu(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final drainDeferredChatCells()V
    .registers 12

    .line 1704
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->isChatScrollingNow()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_8
    move-object v4, p0

    goto/16 :goto_77

    .line 1705
    :cond_b
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->flushPendingAuthorPrefetch()V

    .line 1709
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->takeDeferredChatCells()Ljava/util/ArrayList;

    move-result-object v0

    .line 1710
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_17
    :goto_17
    if-ge v2, v1, :cond_8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/util/Map$Entry;

    .line 1712
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 1713
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v5, :cond_75

    if-nez v6, :cond_2e

    goto :goto_17

    .line 1715
    :cond_2e
    invoke-direct {p0, v6}, Lcom/chimeranft/core/Main;->cachedMessageSenderUserId(Ljava/lang/Object;)J

    move-result-wide v3

    const-wide/16 v7, 0x0

    cmp-long v9, v3, v7

    if-lez v9, :cond_3e

    .line 1716
    invoke-direct {p0, v3, v4}, Lcom/chimeranft/core/Main;->hasVisualChatIdentity(J)Z

    move-result v3

    if-nez v3, :cond_40

    :cond_3e
    move-object v4, p0

    goto :goto_6b

    :cond_40
    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    .line 1721
    invoke-static/range {v4 .. v10}, Lcom/chimeranft/core/Main;->prepareChatMessageIdentity$default(Lcom/chimeranft/core/Main;Ljava/lang/Object;Ljava/lang/Object;ZZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1724
    :try_start_4c
    const-string v3, "invalidate"

    sget-object v7, Lcom/chimeranft/core/Refl;->NO_SIG:[Ljava/lang/Class;

    sget-object v8, Lcom/chimeranft/core/Refl;->NO_ARGS:[Ljava/lang/Object;

    invoke-static {v5, v3, v7, v8}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_56

    goto :goto_57

    :catchall_56
    nop

    .line 1735
    :goto_57
    sget-object v3, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    # invokes: Lcom/chimeranft/core/Main$Companion;->hasHeavyTextLayout(Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v3, v5, v6}, Lcom/chimeranft/core/Main$Companion;->access$hasHeavyTextLayout(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 1739
    :try_start_5f
    const-string v3, "requestLayout"

    sget-object v6, Lcom/chimeranft/core/Refl;->NO_SIG:[Ljava/lang/Class;

    sget-object v7, Lcom/chimeranft/core/Refl;->NO_ARGS:[Ljava/lang/Object;

    invoke-static {v5, v3, v6, v7}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_68
    .catchall {:try_start_5f .. :try_end_68} :catchall_69

    goto :goto_17

    :catchall_69
    nop

    goto :goto_17

    .line 1718
    :goto_6b
    iget-object v3, v4, Lcom/chimeranft/core/Main;->cellStamps:Lcom/chimeranft/core/CellStamps;

    invoke-direct {p0}, Lcom/chimeranft/core/Main;->chatVisualToken()J

    move-result-wide v7

    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/chimeranft/core/CellStamps;->stamp(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto :goto_17

    :cond_75
    move-object v4, p0

    goto :goto_17

    :goto_77
    return-void
.end method

.method private final endFlingPass()V
    .registers 6

    .line 1565
    iget-boolean v0, p0, Lcom/chimeranft/core/Main;->flingPassActive:Z

    if-nez v0, :cond_5

    goto :goto_1e

    :cond_5
    const/4 v0, 0x0

    .line 1566
    iput-boolean v0, p0, Lcom/chimeranft/core/Main;->flingPassActive:Z

    .line 1567
    iget-boolean v1, p0, Lcom/chimeranft/core/Main;->flingPassHasChat:Z

    .line 1568
    iput-boolean v0, p0, Lcom/chimeranft/core/Main;->flingPassHasChat:Z

    if-eqz v1, :cond_1a

    .line 1574
    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    new-instance v2, Lcom/chimeranft/core/Main$endFlingPass$1;

    invoke-direct {v2, p0}, Lcom/chimeranft/core/Main$endFlingPass$1;-><init>(Lcom/chimeranft/core/Main;)V

    const-wide/16 v3, 0x2bc

    # invokes: Lcom/chimeranft/core/Main$Companion;->postUiStatic(Ljava/lang/Runnable;J)V
    invoke-static {v1, v2, v3, v4}, Lcom/chimeranft/core/Main$Companion;->access$postUiStatic(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Runnable;J)V

    .line 1581
    :cond_1a
    iget-boolean v1, p0, Lcom/chimeranft/core/Main;->flingUnhooked:Z

    if-nez v1, :cond_1f

    :goto_1e
    return-void

    .line 1582
    :cond_1f
    iput-boolean v0, p0, Lcom/chimeranft/core/Main;->flingUnhooked:Z

    .line 1583
    iget-object v1, p0, Lcom/chimeranft/core/Main;->flingSlots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_27
    if-ge v0, v1, :cond_39

    .line 1585
    iget-object v2, p0, Lcom/chimeranft/core/Main;->flingSlots:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chimeranft/core/HookSlot;

    if-eqz v2, :cond_36

    .line 1586
    invoke-virtual {v2}, Lcom/chimeranft/core/HookSlot;->install()Z

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 1590
    :cond_39
    iget-object v0, p0, Lcom/chimeranft/core/Main;->chatStampThrottle:Lcom/chimeranft/core/LongStamps;

    invoke-virtual {v0}, Lcom/chimeranft/core/LongStamps;->clear()V

    .line 1591
    iget-object v0, p0, Lcom/chimeranft/core/Main;->hotSeen:Lcom/chimeranft/core/LongStamps;

    invoke-virtual {v0}, Lcom/chimeranft/core/LongStamps;->clear()V

    return-void
.end method

.method private final ensureAccount()V
    .registers 6

    const/4 v0, 0x0

    .line 388
    iput-boolean v0, p0, Lcom/chimeranft/core/Main;->accountCheckDue:Z

    .line 391
    :try_start_3
    iget-object v0, p0, Lcom/chimeranft/core/Main;->selectedAccountField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1c

    .line 394
    iget-boolean v0, p0, Lcom/chimeranft/core/Main;->selectedAccountFieldResolved:Z

    if-eqz v0, :cond_c

    goto :goto_2f

    .line 395
    :cond_c
    sget-object v0, Lcom/chimeranft/core/Main;->UC_CLS:Ljava/lang/String;

    const-string v1, "selectedAccount"

    invoke-static {v0, v1}, Lcom/chimeranft/core/Refl;->staticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 396
    iput-object v0, p0, Lcom/chimeranft/core/Main;->selectedAccountField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    .line 397
    iput-boolean v1, p0, Lcom/chimeranft/core/Main;->selectedAccountFieldResolved:Z

    if-nez v0, :cond_1c

    goto :goto_2f

    .line 400
    :cond_1c
    sget-wide v1, Lcom/chimeranft/core/Main;->accountPollsCold:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lcom/chimeranft/core/Main;->accountPollsCold:J

    const/4 v1, 0x0

    .line 401
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 402
    iget v1, p0, Lcom/chimeranft/core/Main;->currentSlot:I

    if-eq v0, v1, :cond_2f

    invoke-direct {p0, v0}, Lcom/chimeranft/core/Main;->switchToSlot(I)V
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2f

    :catchall_2f
    :cond_2f
    :goto_2f
    return-void
.end method

.method private final ensureAccountFast()V
    .registers 5

    .line 371
    iget-boolean v0, p0, Lcom/chimeranft/core/Main;->accountCheckDue:Z

    if-nez v0, :cond_5

    return-void

    .line 372
    :cond_5
    sget-wide v0, Lcom/chimeranft/core/Main;->accountPollsHot:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/chimeranft/core/Main;->accountPollsHot:J

    .line 373
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->ensureAccount()V

    return-void
.end method

.method public static final ensureAccountNow()V
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->ensureAccountNow()V

    return-void
.end method

.method private final ensureFlingSlotsLive()V
    .registers 2

    .line 1596
    iget-boolean v0, p0, Lcom/chimeranft/core/Main;->flingPassActive:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/chimeranft/core/Main;->flingUnhooked:Z

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    return-void

    :cond_a
    :goto_a
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->endFlingPass()V

    return-void
.end method

.method private final ensureProfileGiftSection(Ljava/lang/Object;Z)Z
    .registers 5

    .line 2758
    sget-object v0, Lcom/chimeranft/core/OpenTrace;->Companion:Lcom/chimeranft/core/OpenTrace$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/OpenTrace$Companion;->traceEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Main;->ensureProfileGiftSectionInner(Ljava/lang/Object;Z)Z

    move-result p1

    return p1

    .line 2759
    :cond_d
    const-string v1, "chimera.profileBarrier"

    invoke-virtual {v0, v1}, Lcom/chimeranft/core/OpenTrace$Companion;->section(Ljava/lang/String;)V

    .line 2762
    :try_start_12
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Main;->ensureProfileGiftSectionInner(Ljava/lang/Object;Z)Z

    move-result p1
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_1a

    .line 2767
    invoke-virtual {v0}, Lcom/chimeranft/core/OpenTrace$Companion;->sectionEnd()V

    return p1

    :catchall_1a
    move-exception p1

    sget-object p2, Lcom/chimeranft/core/OpenTrace;->Companion:Lcom/chimeranft/core/OpenTrace$Companion;

    invoke-virtual {p2}, Lcom/chimeranft/core/OpenTrace$Companion;->sectionEnd()V

    throw p1
.end method

.method static synthetic ensureProfileGiftSection$default(Lcom/chimeranft/core/Main;Ljava/lang/Object;ZILjava/lang/Object;)Z
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 2757
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Main;->ensureProfileGiftSection(Ljava/lang/Object;Z)Z

    move-result p0

    return p0
.end method

.method private final ensureProfileGiftSectionInner(Ljava/lang/Object;Z)Z
    .registers 14

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 2773
    :cond_4
    const-string v1, "userId"

    invoke-static {p1, v1}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_16

    .line 2774
    const-string v1, "dialogId"

    invoke-static {p1, v1}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    :cond_16
    move-wide v7, v1

    .line 2775
    const-string v1, "userInfo"

    invoke-static {p1, v1}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    cmp-long p1, v7, v3

    if-gtz p1, :cond_22

    return v0

    .line 2777
    :cond_22
    iget-wide v1, p0, Lcom/chimeranft/core/Main;->realId:J

    const/4 p1, 0x1

    cmp-long v3, v7, v1

    if-nez v3, :cond_a5

    if-eqz v6, :cond_39

    .line 2779
    iget-object v1, p0, Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;

    if-eqz v1, :cond_39

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Lcom/chimeranft/core/GiftHook;->ensureGiftCount(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    const/4 v0, 0x1

    :cond_39
    if-eqz v6, :cond_49

    .line 2780
    iget-object v1, p0, Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;

    if-eqz v1, :cond_49

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Lcom/chimeranft/core/Identity;->applyAll(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    const/4 v0, 0x1

    .line 2783
    :cond_49
    invoke-direct {p0, v7, v8}, Lcom/chimeranft/core/Main;->cachedUserFor(J)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5d

    .line 2784
    iget-object v2, p0, Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;

    if-eqz v2, :cond_5d

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Lcom/chimeranft/core/Identity;->applyAll(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    const/4 v0, 0x1

    :cond_5d
    if-eqz v6, :cond_89

    .line 2790
    iget-object v1, p0, Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;

    if-eqz v1, :cond_89

    .line 2791
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/chimeranft/core/Store;->hasPinnedChannelConfigured()Z

    move-result v1

    if-nez v1, :cond_72

    invoke-static {}, Lcom/chimeranft/core/PinnedChannel;->hasAnyStamp()Z

    move-result v1

    if-eqz v1, :cond_89

    .line 2793
    :cond_72
    iget-object v1, p0, Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/chimeranft/core/Store;->getPinnedChannelWrapperShared()Lorg/json/JSONObject;

    move-result-object v1

    .line 2794
    invoke-static {v6, v1}, Lcom/chimeranft/core/PinnedChannel;->apply(Ljava/lang/Object;Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_82

    const/4 v0, 0x1

    :cond_82
    if-eqz p2, :cond_89

    if-eqz v1, :cond_89

    .line 2795
    invoke-static {v1}, Lcom/chimeranft/core/PinnedChannel;->ensureCached(Lorg/json/JSONObject;)V

    :cond_89
    if-eqz v6, :cond_a4

    .line 2799
    iget-object p2, p0, Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;

    if-eqz p2, :cond_a4

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v7, v8}, Lcom/chimeranft/core/Badges;->hasUser(J)Z

    move-result p2

    if-eqz p2, :cond_a4

    .line 2800
    iget-object p2, p0, Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v6, v7, v8}, Lcom/chimeranft/core/Badges;->applyForId(Ljava/lang/Object;J)Z

    move-result p2

    if-eqz p2, :cond_a4

    return p1

    :cond_a4
    return v0

    .line 2807
    :cond_a5
    iget-object v5, p0, Lcom/chimeranft/core/Main;->remote:Lcom/chimeranft/core/RemoteIdentity;

    if-eqz v5, :cond_b5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move v10, p2

    move v9, p2

    invoke-virtual/range {v5 .. v10}, Lcom/chimeranft/core/RemoteIdentity;->ensureProfileState(Ljava/lang/Object;JZZ)Z

    move-result p2

    if-eqz p2, :cond_b5

    const/4 v0, 0x1

    :cond_b5
    if-eqz v6, :cond_d0

    .line 2808
    iget-object p2, p0, Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;

    if-eqz p2, :cond_d0

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v7, v8}, Lcom/chimeranft/core/Badges;->hasUser(J)Z

    move-result p2

    if-eqz p2, :cond_d0

    .line 2809
    iget-object p2, p0, Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v6, v7, v8}, Lcom/chimeranft/core/Badges;->applyForId(Ljava/lang/Object;J)Z

    move-result p2

    if-eqz p2, :cond_d0

    return p1

    :cond_d0
    return v0
.end method

.method public static final exportProfile()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->exportProfile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final fetchUpgradeAttrs(J)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/Main$Companion;->fetchUpgradeAttrs(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final flushPendingAuthorPrefetch()V
    .registers 10

    .line 1655
    iget v0, p0, Lcom/chimeranft/core/Main;->chatPendingAuthorCount:I

    const/4 v1, 0x0

    .line 1656
    iput v1, p0, Lcom/chimeranft/core/Main;->chatPendingAuthorCount:I

    .line 1657
    iget-object v2, p0, Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;

    if-eqz v2, :cond_3b

    if-gtz v0, :cond_c

    goto :goto_3b

    .line 1659
    :cond_c
    new-array v3, v0, [J

    .line 1660
    iget-object v4, p0, Lcom/chimeranft/core/Main;->chatPendingAuthorRing:[J

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1663
    :try_start_13
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->prefetchExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v5, Lcom/chimeranft/core/Main$flushPendingAuthorPrefetch$1;

    invoke-direct {v5, v3, v2}, Lcom/chimeranft/core/Main$flushPendingAuthorPrefetch$1;-><init>([JLcom/chimeranft/core/SyncClient;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_23

    goto :goto_34

    :catchall_23
    nop

    :goto_24
    if-ge v1, v0, :cond_34

    .line 1685
    aget-wide v4, v3, v1

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_31

    .line 1686
    invoke-virtual {v2, v4, v5}, Lcom/chimeranft/core/SyncClient;->prefetchRemoteState(J)V

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 1690
    :cond_34
    :goto_34
    iget-wide v0, p0, Lcom/chimeranft/core/Main;->chatBatchPrefetches:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/chimeranft/core/Main;->chatBatchPrefetches:J

    :cond_3b
    :goto_3b
    return-void
.end method

.method private final forgetChatEligibility(J)V
    .registers 8

    .line 1002
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    # invokes: Lcom/chimeranft/core/Main$Companion;->eligSlot(J)I
    invoke-static {v0, p1, p2}, Lcom/chimeranft/core/Main$Companion;->access$eligSlot(Lcom/chimeranft/core/Main$Companion;J)I

    move-result v0

    .line 1003
    iget-object v1, p0, Lcom/chimeranft/core/Main;->eligKey:[J

    aget-wide v2, v1, v0

    cmp-long v4, v2, p1

    if-nez v4, :cond_12

    const-wide/16 p1, 0x0

    aput-wide p1, v1, v0

    :cond_12
    return-void
.end method

.method private final fullThrottled(J)Z
    .registers 10

    .line 3106
    iget-object v0, p0, Lcom/chimeranft/core/Main;->fullSeen:Lcom/chimeranft/core/LongStamps;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/chimeranft/core/Main;->FULL_APPLY_THROTTLE_MS:J

    move-wide v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/chimeranft/core/LongStamps;->throttled(JJJ)Z

    move-result p1

    return p1
.end method

.method public static final getAccessDeniedDecision()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->getAccessDeniedDecision()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getCollectiblePriceJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/Main$Companion;->getCollectiblePriceJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getGiftCollectionsJson()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->getGiftCollectionsJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getGiftCount()I
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->getGiftCount()I

    move-result v0

    return v0
.end method

.method public static final getGiftDisplayJson()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->getGiftDisplayJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getGiftLibraryJson()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->getGiftLibraryJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getGramIconPath()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->getGramIconPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getHookGroupNames()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->getHookGroupNames()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance()Lcom/chimeranft/core/Main;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->getInstance()Lcom/chimeranft/core/Main;

    move-result-object v0

    return-object v0
.end method

.method public static final getLastCrash()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->getLastCrash()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getPerformanceMode()I
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->getPerformanceMode()I

    move-result v0

    return v0
.end method

.method public static final getPerformanceStatusJson()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->getPerformanceStatusJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getPersistenceStatus()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->getPersistenceStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getSafetyReport()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->getSafetyReport()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getSettingsJson()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->getSettingsJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getStateSummary()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->getStateSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getSupporterPopupIconId()J
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->getSupporterPopupIconId()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getSyncStatusJson()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->getSyncStatusJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final giftOrderDiag()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->giftOrderDiag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final hasVisualChatIdentity(J)Z
    .registers 21

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-gtz v6, :cond_c

    return v3

    .line 1754
    :cond_c
    iget-wide v6, v0, Lcom/chimeranft/core/Main;->realId:J

    const/4 v8, 0x1

    cmp-long v9, v1, v6

    if-nez v9, :cond_14

    return v8

    .line 1758
    :cond_14
    iget-object v6, v0, Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;

    if-eqz v6, :cond_23

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6, v1, v2}, Lcom/chimeranft/core/Badges;->hasUser(J)Z

    move-result v6

    if-eqz v6, :cond_23

    const/4 v6, 0x1

    goto :goto_24

    :cond_23
    const/4 v6, 0x0

    :goto_24
    const-wide/16 v9, 0x1

    if-nez v6, :cond_3b

    .line 1759
    iget-object v7, v0, Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;

    if-eqz v7, :cond_35

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7, v1, v2}, Lcom/chimeranft/core/SyncClient;->hasIdentityRecord(J)Z

    move-result v7

    if-nez v7, :cond_3b

    .line 1761
    :cond_35
    iget-wide v1, v0, Lcom/chimeranft/core/Main;->chatNegativeHits:J

    add-long/2addr v1, v9

    iput-wide v1, v0, Lcom/chimeranft/core/Main;->chatNegativeHits:J

    return v3

    .line 1764
    :cond_3b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 1765
    iget-object v7, v0, Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;

    if-nez v7, :cond_44

    goto :goto_49

    :cond_44
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v4, v7, Lcom/chimeranft/core/Badges;->version:J

    .line 1766
    :goto_49
    sget-object v7, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    # invokes: Lcom/chimeranft/core/Main$Companion;->eligSlot(J)I
    invoke-static {v7, v1, v2}, Lcom/chimeranft/core/Main$Companion;->access$eligSlot(Lcom/chimeranft/core/Main$Companion;J)I

    move-result v7

    .line 1767
    iget-object v13, v0, Lcom/chimeranft/core/Main;->eligKey:[J

    aget-wide v14, v13, v7

    cmp-long v13, v14, v1

    if-nez v13, :cond_7f

    iget-object v13, v0, Lcom/chimeranft/core/Main;->eligGeneration:[J

    aget-wide v14, v13, v7

    move-wide/from16 v16, v4

    iget-wide v3, v0, Lcom/chimeranft/core/Main;->chatIdentityGeneration:J

    cmp-long v5, v14, v3

    if-nez v5, :cond_81

    .line 1768
    iget-object v3, v0, Lcom/chimeranft/core/Main;->eligBadgeVersion:[J

    aget-wide v4, v3, v7

    cmp-long v3, v4, v16

    if-nez v3, :cond_81

    iget-object v3, v0, Lcom/chimeranft/core/Main;->eligExpires:[J

    aget-wide v4, v3, v7

    cmp-long v3, v11, v4

    if-gez v3, :cond_81

    .line 1770
    iget-object v1, v0, Lcom/chimeranft/core/Main;->eligVisual:[Z

    aget-boolean v1, v1, v7

    if-nez v1, :cond_7e

    .line 1771
    iget-wide v2, v0, Lcom/chimeranft/core/Main;->chatNegativeHits:J

    add-long/2addr v2, v9

    iput-wide v2, v0, Lcom/chimeranft/core/Main;->chatNegativeHits:J

    :cond_7e
    return v1

    :cond_7f
    move-wide/from16 v16, v4

    :cond_81
    if-nez v6, :cond_93

    .line 1774
    iget-object v3, v0, Lcom/chimeranft/core/Main;->remote:Lcom/chimeranft/core/RemoteIdentity;

    if-eqz v3, :cond_91

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v2}, Lcom/chimeranft/core/RemoteIdentity;->hasChatIdentity(J)Z

    move-result v3

    if-eqz v3, :cond_91

    goto :goto_93

    :cond_91
    const/4 v3, 0x0

    goto :goto_94

    :cond_93
    :goto_93
    const/4 v3, 0x1

    .line 1775
    :goto_94
    iget-object v4, v0, Lcom/chimeranft/core/Main;->eligKey:[J

    aput-wide v1, v4, v7

    .line 1776
    iget-object v1, v0, Lcom/chimeranft/core/Main;->eligGeneration:[J

    iget-wide v4, v0, Lcom/chimeranft/core/Main;->chatIdentityGeneration:J

    aput-wide v4, v1, v7

    .line 1777
    iget-object v1, v0, Lcom/chimeranft/core/Main;->eligBadgeVersion:[J

    aput-wide v16, v1, v7

    .line 1778
    iget-object v1, v0, Lcom/chimeranft/core/Main;->eligVisual:[Z

    aput-boolean v3, v1, v7

    .line 1779
    iget-object v1, v0, Lcom/chimeranft/core/Main;->eligExpires:[J

    if-eqz v3, :cond_ad

    const-wide/16 v4, 0x7530

    goto :goto_af

    :cond_ad
    const-wide/16 v4, 0x1388

    :goto_af
    add-long/2addr v11, v4

    aput-wide v11, v1, v7

    return v3
.end method

.method private final hookTracePhase(Ljava/lang/Class;Ljava/lang/String;ILjava/lang/Class;Z)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .registers 9

    const/4 v0, 0x0

    .line 2480
    :try_start_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 2482
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_26

    :catchall_23
    move-exception p1

    goto :goto_39

    :cond_25
    move-object v1, v0

    :goto_26
    if-nez v1, :cond_29

    return-object v0

    :cond_29
    const/4 p1, 0x1

    .line 2488
    invoke-virtual {v1, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2490
    sget-object p1, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    new-instance v2, Lcom/chimeranft/core/Main$hookTracePhase$1;

    invoke-direct {v2, p4, p5, p0, p3}, Lcom/chimeranft/core/Main$hookTracePhase$1;-><init>(Ljava/lang/Class;ZLcom/chimeranft/core/Main;I)V

    invoke-virtual {p1, v1, v2}, Lcom/chimeranft/core/HookSlot$Companion;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object p1
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_23

    return-object p1

    .line 2519
    :goto_39
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "trace.phaseHook."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/chimeranft/core/Safe;->note(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private final hotThrottled(JLjava/lang/Object;)Z
    .registers 12

    .line 3101
    iget-object v0, p0, Lcom/chimeranft/core/Main;->hotSeen:Lcom/chimeranft/core/LongStamps;

    if-nez p3, :cond_7

    const/4 p3, 0x0

    const/4 v3, 0x0

    goto :goto_c

    :cond_7
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p3

    move v3, p3

    .line 3102
    :goto_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/chimeranft/core/Main;->HOT_APPLY_THROTTLE_MS:J

    move-wide v1, p1

    .line 3101
    invoke-virtual/range {v0 .. v7}, Lcom/chimeranft/core/LongStamps;->throttled(JIJJ)Z

    move-result p1

    return p1
.end method

.method public static final importProfile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/Main$Companion;->importProfile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/chimeranft/core/Main$Companion;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final inspectFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->inspectFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final installAllHooks()V
    .registers 5

    .line 499
    const-string v0, "installed"

    sget-object v1, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    invoke-virtual {v1}, Lcom/chimeranft/core/HookSlot$Companion;->markUiThread()V

    .line 500
    const-string v1, "installBatch"

    invoke-static {v1}, Lcom/chimeranft/core/BlackBox;->mark(Ljava/lang/String;)V

    .line 503
    :try_start_c
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->installHooks()V

    .line 504
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->installSupporterPopupHooks()V

    .line 505
    iget-object v1, p0, Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;

    if-eqz v1, :cond_1f

    .line 506
    invoke-virtual {v1}, Lcom/chimeranft/core/GiftHook;->install()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/chimeranft/core/Main;->giftStatus:Ljava/lang/String;

    goto :goto_1f

    :catchall_1d
    move-exception v1

    goto :goto_26

    .line 510
    :cond_1f
    :goto_1f
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->installProfileHook()V
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_1d

    .line 518
    invoke-static {v0}, Lcom/chimeranft/core/BlackBox;->mark(Ljava/lang/String;)V

    return-void

    .line 513
    :goto_26
    :try_start_26
    const-string v2, "init.installAllHooks"

    invoke-static {v2, v1}, Lcom/chimeranft/core/Safe;->note(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 514
    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v1}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "batch FAIL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/chimeranft/core/Main;->hookStatus:Ljava/lang/String;
    :try_end_44
    .catchall {:try_start_26 .. :try_end_44} :catchall_48

    .line 518
    invoke-static {v0}, Lcom/chimeranft/core/BlackBox;->mark(Ljava/lang/String;)V

    return-void

    :catchall_48
    move-exception v1

    invoke-static {v0}, Lcom/chimeranft/core/BlackBox;->mark(Ljava/lang/String;)V

    throw v1
.end method

.method private final declared-synchronized installChatActivityHooks()V
    .registers 9

    monitor-enter p0

    .line 1191
    :try_start_1
    invoke-static {}, Lcom/chimeranft/core/ForkBootstrap;->directHostCallsEnabled()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_68

    if-eqz v0, :cond_9

    monitor-exit p0

    return-void

    .line 1192
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/chimeranft/core/Main;->chatResumeUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_68

    if-eqz v0, :cond_f

    monitor-exit p0

    return-void

    .line 1195
    :cond_f
    :try_start_f
    const-string v0, "org.telegram.ui.ChatActivity"

    invoke-static {v0}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_3b

    if-nez v2, :cond_19

    .line 1196
    monitor-exit p0

    return-void

    .line 1197
    :cond_19
    :try_start_19
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    const-string v1, "onResume"

    # invokes: Lcom/chimeranft/core/Main$Companion;->findNoArg(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    invoke-static {v0, v2, v1}, Lcom/chimeranft/core/Main$Companion;->access$findNoArg(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1198
    const-string v3, "onPause"

    # invokes: Lcom/chimeranft/core/Main$Companion;->findNoArg(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    invoke-static {v0, v2, v3}, Lcom/chimeranft/core/Main$Companion;->access$findNoArg(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v7, 0x1

    if-eqz v1, :cond_3d

    .line 1201
    invoke-virtual {v1, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1202
    sget-object v3, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    new-instance v4, Lcom/chimeranft/core/Main$installChatActivityHooks$1;

    invoke-direct {v4, v2, p0}, Lcom/chimeranft/core/Main$installChatActivityHooks$1;-><init>(Ljava/lang/Class;Lcom/chimeranft/core/Main;)V

    invoke-virtual {v3, v1, v4}, Lcom/chimeranft/core/HookSlot$Companion;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v1

    iput-object v1, p0, Lcom/chimeranft/core/Main;->chatResumeUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    goto :goto_3d

    :catchall_3b
    move-object v1, p0

    goto :goto_66

    .line 1254
    :cond_3d
    :goto_3d
    const-string v3, "onFragmentCreate"
    :try_end_3f
    .catchall {:try_start_19 .. :try_end_3f} :catchall_3b

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, v2

    move-object v1, p0

    :try_start_43
    invoke-direct/range {v1 .. v6}, Lcom/chimeranft/core/Main;->hookTracePhase(Ljava/lang/Class;Ljava/lang/String;ILjava/lang/Class;Z)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v3

    iput-object v3, v1, Lcom/chimeranft/core/Main;->chatCreateUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 1255
    const-string v3, "createView"

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v5, v2

    invoke-direct/range {v1 .. v6}, Lcom/chimeranft/core/Main;->hookTracePhase(Ljava/lang/Class;Ljava/lang/String;ILjava/lang/Class;Z)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v2

    iput-object v2, v1, Lcom/chimeranft/core/Main;->chatViewUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    if-eqz v0, :cond_66

    .line 1258
    invoke-virtual {v0, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1259
    sget-object v2, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    new-instance v3, Lcom/chimeranft/core/Main$installChatActivityHooks$2;

    invoke-direct {v3, p0}, Lcom/chimeranft/core/Main$installChatActivityHooks$2;-><init>(Lcom/chimeranft/core/Main;)V

    invoke-virtual {v2, v0, v3}, Lcom/chimeranft/core/HookSlot$Companion;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/Main;->chatPauseUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_66
    .catchall {:try_start_43 .. :try_end_66} :catchall_66

    .line 1282
    :catchall_66
    :cond_66
    :goto_66
    monitor-exit p0

    return-void

    :catchall_68
    move-exception v0

    move-object v1, p0

    :goto_6a
    :try_start_6a
    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_6c

    throw v0

    :catchall_6c
    move-exception v0

    goto :goto_6a
.end method

.method private final declared-synchronized installChatMessageIdentityHooks()V
    .registers 11

    monitor-enter p0

    .line 1007
    :try_start_1
    iget-object v0, p0, Lcom/chimeranft/core/Main;->chatMessageIdentitySlots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_70

    if-nez v0, :cond_b

    monitor-exit p0

    return-void

    .line 1010
    :cond_b
    :try_start_b
    const-string v0, "org.telegram.ui.Cells.ChatMessageCell"

    invoke-static {v0}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_6e

    if-nez v0, :cond_15

    .line 1011
    monitor-exit p0

    return-void

    .line 1012
    :cond_15
    :try_start_15
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 1014
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "setMessageObject"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1015
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 1017
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3c
    if-ge v5, v3, :cond_52

    .line 1019
    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MessageObject"

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v6, v7, v4, v8, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    goto :goto_53

    :cond_4f
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    :cond_52
    const/4 v5, -0x1

    :goto_53
    if-ltz v5, :cond_1d

    const/4 v2, 0x1

    .line 1027
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1028
    sget-object v2, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    const-string v3, "setMessageObject"

    new-instance v4, Lcom/chimeranft/core/Main$installChatMessageIdentityHooks$slot$1;

    invoke-direct {v4, v5, p0}, Lcom/chimeranft/core/Main$installChatMessageIdentityHooks$slot$1;-><init>(ILcom/chimeranft/core/Main;)V

    invoke-virtual {v2, v3, v1, v4}, Lcom/chimeranft/core/HookSlot$Companion;->hook(Ljava/lang/String;Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lcom/chimeranft/core/HookSlot;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 1069
    iget-object v2, p0, Lcom/chimeranft/core/Main;->chatMessageIdentitySlots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6d
    .catchall {:try_start_15 .. :try_end_6d} :catchall_6e

    goto :goto_1d

    .line 1078
    :catchall_6e
    :cond_6e
    monitor-exit p0

    return-void

    :catchall_70
    move-exception v0

    :try_start_71
    monitor-exit p0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw v0
.end method

.method private final installChatScrollFastLaneHooks()V
    .registers 7

    .line 1085
    :try_start_0
    const-string v0, "androidx.recyclerview.widget.RecyclerView"

    invoke-static {v0}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_50

    .line 1087
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 1089
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "setScrollState"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-static {v3}, Lcom/chimeranft/core/Badges$Companion$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v4

    if-ne v4, v2, :cond_12

    .line 1090
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    aget-object v4, v4, v1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v4, v5, :cond_3b

    goto :goto_12

    .line 1092
    :cond_3b
    invoke-virtual {v3, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1093
    sget-object v0, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    new-instance v4, Lcom/chimeranft/core/Main$installChatScrollFastLaneHooks$1;

    invoke-direct {v4, p0}, Lcom/chimeranft/core/Main$installChatScrollFastLaneHooks$1;-><init>(Lcom/chimeranft/core/Main;)V

    invoke-virtual {v0, v3, v4}, Lcom/chimeranft/core/HookSlot$Companion;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 1130
    iget-object v3, p0, Lcom/chimeranft/core/Main;->chatFastLaneUnhooks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1143
    :cond_50
    const-string v0, "org.telegram.ui.Components.AnimatedEmojiDrawable"

    invoke-static {v0}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_9b

    .line 1145
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    :cond_60
    :goto_60
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 1147
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "update"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-static {v3}, Lcom/chimeranft/core/Badges$Companion$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v4

    if-ne v4, v2, :cond_60

    .line 1148
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    aget-object v4, v4, v1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v4, v5, :cond_89

    goto :goto_60

    .line 1150
    :cond_89
    invoke-virtual {v3, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1155
    sget-object v0, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    const-string v1, "emojiFreeze"

    new-instance v2, Lcom/chimeranft/core/Main$installChatScrollFastLaneHooks$3;

    invoke-direct {v2}, Lcom/chimeranft/core/Main$installChatScrollFastLaneHooks$3;-><init>()V

    invoke-virtual {v0, v1, v3, v2}, Lcom/chimeranft/core/HookSlot$Companion;->deferred(Ljava/lang/String;Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lcom/chimeranft/core/HookSlot;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/Main;->emojiFreezeSlot:Lcom/chimeranft/core/HookSlot;
    :try_end_9b
    .catchall {:try_start_0 .. :try_end_9b} :catchall_9b

    :catchall_9b
    :cond_9b
    return-void
.end method

.method private final installExteraBadgeControllerHooks()V
    .registers 2

    .line 2051
    iget-boolean v0, p0, Lcom/chimeranft/core/Main;->exteraControllerHooksSettled:Z

    if-eqz v0, :cond_5

    return-void

    .line 2052
    :cond_5
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->installExteraBadgeControllerHooksLocked()V

    return-void
.end method

.method private final declared-synchronized installExteraBadgeControllerHooksLocked()V
    .registers 13

    monitor-enter p0

    .line 2056
    :try_start_1
    iget-object v0, p0, Lcom/chimeranft/core/Main;->exteraBadgeSlot:Lcom/chimeranft/core/HookSlot;

    const/4 v1, 0x1

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/chimeranft/core/Main;->exteraSecondarySlot:Lcom/chimeranft/core/HookSlot;

    if-nez v0, :cond_16

    sget-object v0, Lcom/chimeranft/core/Badges;->Companion:Lcom/chimeranft/core/Badges$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Badges$Companion;->hostHasSecondarySlot()Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_16

    :catchall_13
    move-exception v0

    goto/16 :goto_12c

    .line 2057
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/chimeranft/core/Main;->exteraSecondaryRuleSlot:Lcom/chimeranft/core/HookSlot;

    if-nez v0, :cond_22

    sget-object v0, Lcom/chimeranft/core/Badges;->Companion:Lcom/chimeranft/core/Badges$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Badges$Companion;->hostHasSecondarySlot()Z

    move-result v0

    if-nez v0, :cond_26

    .line 2059
    :cond_22
    iput-boolean v1, p0, Lcom/chimeranft/core/Main;->exteraControllerHooksSettled:Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_13

    .line 2060
    monitor-exit p0

    return-void

    .line 2064
    :cond_26
    :try_start_26
    sget-object v0, Lcom/chimeranft/core/Badges;->Companion:Lcom/chimeranft/core/Badges$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Badges$Companion;->hostOwnsSupporterSlot()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_36

    .line 2065
    const-string v0, "com.exteragram.messenger.badges.BadgesController"

    invoke-static {v0}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_35
    .catchall {:try_start_26 .. :try_end_35} :catchall_12a

    goto :goto_37

    :cond_36
    move-object v0, v2

    :goto_37
    if-nez v0, :cond_3b

    .line 2068
    monitor-exit p0

    return-void

    .line 2069
    :cond_3b
    :try_start_3b
    const-string v3, "org.telegram.tgnet.TLObject"

    invoke-static {v3}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 2074
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    :cond_4c
    :goto_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Method;

    .line 2076
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    if-nez v4, :cond_70

    .line 2077
    array-length v9, v8

    const/4 v10, 0x2

    if-ne v9, v10, :cond_70

    .line 2078
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "shouldUseSecondaryBadgeSlot"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_70

    move-object v4, v7

    goto :goto_4c

    :cond_70
    if-nez v5, :cond_8b

    .line 2086
    array-length v9, v8

    const/4 v10, 0x7

    if-ne v9, v10, :cond_8b

    const/4 v9, 0x3

    aget-object v9, v8, v9

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v9, v10, :cond_8b

    .line 2087
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "showBadgeBulletin"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8b

    move-object v5, v7

    goto :goto_4c

    .line 2092
    :cond_8b
    array-length v9, v8

    if-ne v9, v1, :cond_4c

    const/4 v9, 0x0

    aget-object v10, v8, v9

    invoke-virtual {v10}, Ljava/lang/Class;->isPrimitive()Z

    move-result v10

    if-eqz v10, :cond_98

    goto :goto_4c

    :cond_98
    if-nez v2, :cond_b2

    .line 2093
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "getBadge"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b2

    if-eqz v3, :cond_b2

    .line 2094
    aget-object v8, v8, v9

    invoke-virtual {v3, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_b2

    move-object v2, v7

    goto :goto_4c

    :cond_b2
    if-nez v6, :cond_4c

    .line 2098
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "getSecondaryBadge"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4c

    move-object v6, v7

    goto :goto_4c

    :cond_c2
    if-eqz v2, :cond_da

    .line 2103
    iget-object v0, p0, Lcom/chimeranft/core/Main;->exteraBadgeSlot:Lcom/chimeranft/core/HookSlot;

    if-nez v0, :cond_da

    .line 2105
    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2106
    sget-object v0, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    const-string v3, "exteraBadge"

    new-instance v7, Lcom/chimeranft/core/Main$installExteraBadgeControllerHooksLocked$1;

    invoke-direct {v7, p0}, Lcom/chimeranft/core/Main$installExteraBadgeControllerHooksLocked$1;-><init>(Lcom/chimeranft/core/Main;)V

    invoke-virtual {v0, v3, v2, v7}, Lcom/chimeranft/core/HookSlot$Companion;->hook(Ljava/lang/String;Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lcom/chimeranft/core/HookSlot;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/Main;->exteraBadgeSlot:Lcom/chimeranft/core/HookSlot;

    :cond_da
    if-eqz v6, :cond_f2

    .line 2137
    iget-object v0, p0, Lcom/chimeranft/core/Main;->exteraSecondarySlot:Lcom/chimeranft/core/HookSlot;

    if-nez v0, :cond_f2

    .line 2139
    invoke-virtual {v6, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2140
    sget-object v0, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    const-string v3, "exteraSecondary"

    new-instance v7, Lcom/chimeranft/core/Main$installExteraBadgeControllerHooksLocked$2;

    invoke-direct {v7, p0}, Lcom/chimeranft/core/Main$installExteraBadgeControllerHooksLocked$2;-><init>(Lcom/chimeranft/core/Main;)V

    invoke-virtual {v0, v3, v6, v7}, Lcom/chimeranft/core/HookSlot$Companion;->hook(Ljava/lang/String;Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lcom/chimeranft/core/HookSlot;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/Main;->exteraSecondarySlot:Lcom/chimeranft/core/HookSlot;

    :cond_f2
    if-eqz v4, :cond_10a

    .line 2166
    iget-object v0, p0, Lcom/chimeranft/core/Main;->exteraSecondaryRuleSlot:Lcom/chimeranft/core/HookSlot;

    if-nez v0, :cond_10a

    .line 2168
    invoke-virtual {v4, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2169
    sget-object v0, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    const-string v3, "exteraSecondaryRule"

    new-instance v6, Lcom/chimeranft/core/Main$installExteraBadgeControllerHooksLocked$3;

    invoke-direct {v6, p0}, Lcom/chimeranft/core/Main$installExteraBadgeControllerHooksLocked$3;-><init>(Lcom/chimeranft/core/Main;)V

    invoke-virtual {v0, v3, v4, v6}, Lcom/chimeranft/core/HookSlot$Companion;->hook(Ljava/lang/String;Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lcom/chimeranft/core/HookSlot;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/Main;->exteraSecondaryRuleSlot:Lcom/chimeranft/core/HookSlot;

    :cond_10a
    if-eqz v5, :cond_122

    .line 2189
    iget-object v0, p0, Lcom/chimeranft/core/Main;->exteraBulletinSlot:Lcom/chimeranft/core/HookSlot;

    if-nez v0, :cond_122

    .line 2191
    invoke-virtual {v5, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2192
    sget-object v0, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    const-string v3, "exteraBadgeBulletin"

    new-instance v4, Lcom/chimeranft/core/Main$installExteraBadgeControllerHooksLocked$4;

    invoke-direct {v4, p0}, Lcom/chimeranft/core/Main$installExteraBadgeControllerHooksLocked$4;-><init>(Lcom/chimeranft/core/Main;)V

    invoke-virtual {v0, v3, v5, v4}, Lcom/chimeranft/core/HookSlot$Companion;->hook(Ljava/lang/String;Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lcom/chimeranft/core/HookSlot;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/Main;->exteraBulletinSlot:Lcom/chimeranft/core/HookSlot;

    .line 2208
    :cond_122
    iget-object v0, p0, Lcom/chimeranft/core/Main;->exteraBadgeSlot:Lcom/chimeranft/core/HookSlot;

    if-nez v0, :cond_128

    if-nez v2, :cond_12a

    :cond_128
    iput-boolean v1, p0, Lcom/chimeranft/core/Main;->exteraControllerHooksSettled:Z
    :try_end_12a
    .catchall {:try_start_3b .. :try_end_12a} :catchall_12a

    .line 2212
    :catchall_12a
    :cond_12a
    monitor-exit p0

    return-void

    :goto_12c
    :try_start_12c
    monitor-exit p0
    :try_end_12d
    .catchall {:try_start_12c .. :try_end_12d} :catchall_13

    throw v0
.end method

.method private final installExteraBadgeSourceHook()V
    .registers 2

    .line 2220
    iget-boolean v0, p0, Lcom/chimeranft/core/Main;->exteraSourceHookSettled:Z

    if-eqz v0, :cond_5

    return-void

    .line 2221
    :cond_5
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->installExteraBadgeSourceHookLocked()V

    return-void
.end method

.method private final declared-synchronized installExteraBadgeSourceHookLocked()V
    .registers 7

    monitor-enter p0

    .line 2225
    :try_start_1
    iget-object v0, p0, Lcom/chimeranft/core/Main;->exteraBadgeSourceSlot:Lcom/chimeranft/core/HookSlot;

    if-nez v0, :cond_84

    iget-object v0, p0, Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;

    if-nez v0, :cond_b

    goto/16 :goto_84

    .line 2226
    :cond_b
    sget-object v0, Lcom/chimeranft/core/Badges;->Companion:Lcom/chimeranft/core/Badges$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Badges$Companion;->hostOwnsSupporterSlot()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_23

    .line 2231
    const-string v0, "com.exteragram.messenger.badges.BadgesController"

    invoke-static {v0}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2232
    iput-boolean v1, p0, Lcom/chimeranft/core/Main;->exteraSourceHookSettled:Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1f

    goto :goto_21

    :catchall_1f
    move-exception v0

    goto :goto_86

    .line 2233
    :cond_21
    :goto_21
    monitor-exit p0

    return-void

    .line 2237
    :cond_23
    :try_start_23
    const-string v0, "com.exteragram.messenger.badges.source.ApiBadgeSource"

    invoke-static {v0}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 2239
    iput-boolean v1, p0, Lcom/chimeranft/core/Main;->exteraSourceHookSettled:Z
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_82

    .line 2240
    monitor-exit p0

    return-void

    .line 2243
    :cond_2f
    :try_start_2f
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    :cond_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 2245
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 2246
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getBadge"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_37

    const/4 v4, 0x0

    .line 2247
    aget-object v4, v3, v4

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_37

    aget-object v3, v3, v1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_37

    goto :goto_66

    :cond_65
    const/4 v2, 0x0

    :goto_66
    if-nez v2, :cond_6c

    .line 2254
    iput-boolean v1, p0, Lcom/chimeranft/core/Main;->exteraSourceHookSettled:Z
    :try_end_6a
    .catchall {:try_start_2f .. :try_end_6a} :catchall_82

    .line 2255
    monitor-exit p0

    return-void

    .line 2257
    :cond_6c
    :try_start_6c
    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2258
    sget-object v0, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    const-string v3, "exteraSource"

    new-instance v4, Lcom/chimeranft/core/Main$installExteraBadgeSourceHookLocked$1;

    invoke-direct {v4, p0}, Lcom/chimeranft/core/Main$installExteraBadgeSourceHookLocked$1;-><init>(Lcom/chimeranft/core/Main;)V

    invoke-virtual {v0, v3, v2, v4}, Lcom/chimeranft/core/HookSlot$Companion;->hook(Ljava/lang/String;Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lcom/chimeranft/core/HookSlot;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/Main;->exteraBadgeSourceSlot:Lcom/chimeranft/core/HookSlot;

    if-eqz v0, :cond_82

    .line 2282
    iput-boolean v1, p0, Lcom/chimeranft/core/Main;->exteraSourceHookSettled:Z
    :try_end_82
    .catchall {:try_start_6c .. :try_end_82} :catchall_82

    .line 2286
    :catchall_82
    :cond_82
    monitor-exit p0

    return-void

    .line 2225
    :cond_84
    :goto_84
    monitor-exit p0

    return-void

    :goto_86
    :try_start_86
    monitor-exit p0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_1f

    throw v0
.end method

.method private final installHooks()V
    .registers 18

    move-object/from16 v1, p0

    .line 523
    const-string v7, "getChat"

    const-string v6, "getUser"

    .line 525
    :try_start_6
    const-string v0, "org.telegram.messenger.MessagesController"

    invoke-static {v0}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    if-nez v8, :cond_16

    .line 527
    const-string v0, "no MessagesController"

    iput-object v0, v1, Lcom/chimeranft/core/Main;->hookStatus:Ljava/lang/String;

    return-void

    :catchall_13
    move-exception v0

    goto/16 :goto_2a1

    .line 530
    :cond_16
    iget-object v4, v1, Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;

    .line 531
    iget-object v5, v1, Lcom/chimeranft/core/Main;->remote:Lcom/chimeranft/core/RemoteIdentity;

    .line 532
    iget-object v9, v1, Lcom/chimeranft/core/Main;->notifier:Lcom/chimeranft/core/Notifier;

    .line 533
    iget-object v2, v1, Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;

    .line 534
    iget-object v3, v1, Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;

    .line 536
    invoke-direct {v1}, Lcom/chimeranft/core/Main;->installExteraBadgeControllerHooks()V

    .line 537
    invoke-direct {v1}, Lcom/chimeranft/core/Main;->installExteraBadgeSourceHook()V

    .line 539
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    # invokes: Lcom/chimeranft/core/Main$Companion;->findSingleNumericArg(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    invoke-static {v0, v8, v6}, Lcom/chimeranft/core/Main$Companion;->access$findSingleNumericArg(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 540
    const-string v11, "getUserFull"

    # invokes: Lcom/chimeranft/core/Main$Companion;->findSingleNumericArg(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    invoke-static {v0, v8, v11}, Lcom/chimeranft/core/Main$Companion;->access$findSingleNumericArg(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 542
    invoke-static {}, Lcom/chimeranft/core/ForkBootstrap;->directHostCallsEnabled()Z

    move-result v0

    if-nez v0, :cond_52

    if-eqz v10, :cond_52

    iget-object v0, v1, Lcom/chimeranft/core/Main;->getUserSlot:Lcom/chimeranft/core/HookSlot;

    if-nez v0, :cond_52

    .line 544
    sget-object v12, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    new-instance v0, Lcom/chimeranft/core/Main$installHooks$1;

    invoke-direct/range {v0 .. v5}, Lcom/chimeranft/core/Main$installHooks$1;-><init>(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/Badges;Lcom/chimeranft/core/SyncClient;Lcom/chimeranft/core/Identity;Lcom/chimeranft/core/RemoteIdentity;)V

    invoke-virtual {v12, v6, v10, v0}, Lcom/chimeranft/core/HookSlot$Companion;->hook(Ljava/lang/String;Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lcom/chimeranft/core/HookSlot;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/Main;->getUserSlot:Lcom/chimeranft/core/HookSlot;

    if-eqz v0, :cond_52

    .line 624
    iget-object v6, v1, Lcom/chimeranft/core/Main;->flingSlots:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    :cond_52
    invoke-static {}, Lcom/chimeranft/core/ForkBootstrap;->directHostCallsEnabled()Z

    move-result v0

    if-nez v0, :cond_78

    if-eqz v11, :cond_78

    iget-object v0, v1, Lcom/chimeranft/core/Main;->getUserFullUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    if-nez v0, :cond_78

    .line 628
    sget-object v10, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    new-instance v0, Lcom/chimeranft/core/Main$installHooks$3;

    move-object v6, v4

    move-object v4, v2

    move-object v2, v3

    move-object v3, v5

    move-object v5, v6

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/chimeranft/core/Main$installHooks$3;-><init>(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/SyncClient;Lcom/chimeranft/core/RemoteIdentity;Lcom/chimeranft/core/Badges;Lcom/chimeranft/core/Identity;Lcom/chimeranft/core/Notifier;)V

    move-object/from16 v16, v3

    move-object v3, v2

    move-object v2, v4

    move-object v4, v5

    move-object/from16 v5, v16

    invoke-virtual {v10, v11, v0}, Lcom/chimeranft/core/HookSlot$Companion;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/Main;->getUserFullUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 710
    :cond_78
    invoke-static {}, Lcom/chimeranft/core/ForkBootstrap;->directHostCallsEnabled()Z

    move-result v0

    const/4 v6, 0x0

    const/4 v9, 0x1

    if-nez v0, :cond_d5

    iget-object v0, v1, Lcom/chimeranft/core/Main;->putUserIdentityUnhooks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 712
    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v10

    :cond_90
    :goto_90
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/reflect/Method;

    .line 714
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v12, "putUser"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-static {v11}, Lcom/chimeranft/core/Badges$Companion$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v0

    if-ge v0, v9, :cond_b0

    goto :goto_90

    .line 715
    :cond_b0
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    aget-object v0, v0, v6

    .line 716
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0
    :try_end_ba
    .catchall {:try_start_6 .. :try_end_ba} :catchall_13

    if-nez v0, :cond_90

    .line 719
    :try_start_bc
    invoke-virtual {v11, v9}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 720
    sget-object v12, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    new-instance v0, Lcom/chimeranft/core/Main$installHooks$unhook$1;

    invoke-direct/range {v0 .. v5}, Lcom/chimeranft/core/Main$installHooks$unhook$1;-><init>(Lcom/chimeranft/core/Main;Lcom/chimeranft/core/Badges;Lcom/chimeranft/core/SyncClient;Lcom/chimeranft/core/Identity;Lcom/chimeranft/core/RemoteIdentity;)V

    invoke-virtual {v12, v11, v0}, Lcom/chimeranft/core/HookSlot$Companion;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v0

    if-eqz v0, :cond_90

    .line 783
    iget-object v11, v1, Lcom/chimeranft/core/Main;->putUserIdentityUnhooks:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d1
    .catchall {:try_start_bc .. :try_end_d1} :catchall_d2

    goto :goto_90

    .line 785
    :catchall_d2
    :try_start_d2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_90

    .line 792
    :cond_d5
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    # invokes: Lcom/chimeranft/core/Main$Companion;->findSingleNumericArg(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    invoke-static {v0, v8, v7}, Lcom/chimeranft/core/Main$Companion;->access$findSingleNumericArg(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 793
    const-string v5, "getChatFull"

    # invokes: Lcom/chimeranft/core/Main$Companion;->findSingleNumericArg(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    invoke-static {v0, v8, v5}, Lcom/chimeranft/core/Main$Companion;->access$findSingleNumericArg(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 794
    invoke-static {}, Lcom/chimeranft/core/ForkBootstrap;->directHostCallsEnabled()Z

    move-result v5

    if-nez v5, :cond_101

    if-eqz v4, :cond_101

    iget-object v5, v1, Lcom/chimeranft/core/Main;->getChatSlot:Lcom/chimeranft/core/HookSlot;

    if-nez v5, :cond_101

    .line 796
    sget-object v5, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    new-instance v8, Lcom/chimeranft/core/Main$installHooks$5;

    invoke-direct {v8, v2, v1}, Lcom/chimeranft/core/Main$installHooks$5;-><init>(Lcom/chimeranft/core/Badges;Lcom/chimeranft/core/Main;)V

    invoke-virtual {v5, v7, v4, v8}, Lcom/chimeranft/core/HookSlot$Companion;->hook(Ljava/lang/String;Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lcom/chimeranft/core/HookSlot;

    move-result-object v4

    iput-object v4, v1, Lcom/chimeranft/core/Main;->getChatSlot:Lcom/chimeranft/core/HookSlot;

    if-eqz v4, :cond_101

    .line 840
    iget-object v5, v1, Lcom/chimeranft/core/Main;->flingSlots:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    :cond_101
    invoke-static {}, Lcom/chimeranft/core/ForkBootstrap;->directHostCallsEnabled()Z

    move-result v4

    if-nez v4, :cond_11a

    if-eqz v0, :cond_11a

    iget-object v4, v1, Lcom/chimeranft/core/Main;->getChatFullUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    if-nez v4, :cond_11a

    .line 844
    sget-object v4, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    new-instance v5, Lcom/chimeranft/core/Main$installHooks$7;

    invoke-direct {v5, v2, v1, v3}, Lcom/chimeranft/core/Main$installHooks$7;-><init>(Lcom/chimeranft/core/Badges;Lcom/chimeranft/core/Main;Lcom/chimeranft/core/SyncClient;)V

    invoke-virtual {v4, v0, v5}, Lcom/chimeranft/core/HookSlot$Companion;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/Main;->getChatFullUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_11a
    .catchall {:try_start_d2 .. :try_end_11a} :catchall_13

    :cond_11a
    const/4 v0, 0x0

    .line 868
    :try_start_11b
    const-string v3, "org.telegram.messenger.DialogObject"

    invoke-static {v3}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_14a

    .line 872
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v3

    :cond_12b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 874
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "getBotVerificationIcon"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12b

    invoke-static {v4}, Lcom/chimeranft/core/Badges$Companion$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v5

    if-ne v5, v9, :cond_12b

    goto :goto_14b

    :cond_14a
    move-object v4, v0

    :goto_14b
    if-eqz v4, :cond_163

    .line 880
    iget-object v3, v1, Lcom/chimeranft/core/Main;->botVerifIconSlot:Lcom/chimeranft/core/HookSlot;

    if-nez v3, :cond_163

    .line 882
    invoke-virtual {v4, v9}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 883
    sget-object v3, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    const-string v5, "botVerifIcon"

    new-instance v7, Lcom/chimeranft/core/Main$installHooks$8;

    invoke-direct {v7, v2}, Lcom/chimeranft/core/Main$installHooks$8;-><init>(Lcom/chimeranft/core/Badges;)V

    invoke-virtual {v3, v5, v4, v7}, Lcom/chimeranft/core/HookSlot$Companion;->hook(Ljava/lang/String;Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lcom/chimeranft/core/HookSlot;

    move-result-object v3

    iput-object v3, v1, Lcom/chimeranft/core/Main;->botVerifIconSlot:Lcom/chimeranft/core/HookSlot;
    :try_end_163
    .catchall {:try_start_11b .. :try_end_163} :catchall_163

    .line 919
    :catchall_163
    :cond_163
    :try_start_163
    const-string v3, "org.telegram.ui.Cells.DialogCell"

    invoke-static {v3}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_192

    .line 923
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v3

    :cond_173
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_192

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 925
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "buildLayout"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_173

    invoke-static {v4}, Lcom/chimeranft/core/Badges$Companion$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v5

    if-nez v5, :cond_173

    move-object v0, v4

    .line 932
    :cond_192
    invoke-static {}, Lcom/chimeranft/core/ForkBootstrap;->directHostCallsEnabled()Z

    move-result v3

    if-nez v3, :cond_1ae

    if-eqz v0, :cond_1ae

    iget-object v3, v1, Lcom/chimeranft/core/Main;->dialogCellBadgeUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    if-nez v3, :cond_1ae

    .line 934
    invoke-virtual {v0, v9}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 935
    sget-object v3, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    new-instance v4, Lcom/chimeranft/core/Main$installHooks$9;

    invoke-direct {v4, v2}, Lcom/chimeranft/core/Main$installHooks$9;-><init>(Lcom/chimeranft/core/Badges;)V

    invoke-virtual {v3, v0, v4}, Lcom/chimeranft/core/HookSlot$Companion;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/Main;->dialogCellBadgeUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_1ae
    .catchall {:try_start_163 .. :try_end_1ae} :catchall_1ae

    .line 966
    :catchall_1ae
    :cond_1ae
    :try_start_1ae
    invoke-static {}, Lcom/chimeranft/core/ForkBootstrap;->directHostCallsEnabled()Z

    move-result v0

    if-nez v0, :cond_1b7

    invoke-direct {v1}, Lcom/chimeranft/core/Main;->installChatMessageIdentityHooks()V

    .line 967
    :cond_1b7
    invoke-direct {v1}, Lcom/chimeranft/core/Main;->installChatScrollFastLaneHooks()V

    .line 968
    invoke-direct {v1}, Lcom/chimeranft/core/Main;->installChatActivityHooks()V

    .line 969
    invoke-direct {v1}, Lcom/chimeranft/core/Main;->installTypingWindowHook()V

    .line 970
    invoke-direct {v1}, Lcom/chimeranft/core/Main;->installTransitionWindowHooks()V

    .line 979
    iget-object v0, v1, Lcom/chimeranft/core/Main;->getUserSlot:Lcom/chimeranft/core/HookSlot;

    if-eqz v0, :cond_1c9

    const/4 v0, 0x1

    goto :goto_1ca

    :cond_1c9
    const/4 v0, 0x0

    .line 980
    :goto_1ca
    iget-object v2, v1, Lcom/chimeranft/core/Main;->getUserFullUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    if-eqz v2, :cond_1d0

    const/4 v2, 0x1

    goto :goto_1d1

    :cond_1d0
    const/4 v2, 0x0

    .line 981
    :goto_1d1
    iget-object v3, v1, Lcom/chimeranft/core/Main;->getChatSlot:Lcom/chimeranft/core/HookSlot;

    if-eqz v3, :cond_1d7

    const/4 v3, 0x1

    goto :goto_1d8

    :cond_1d7
    const/4 v3, 0x0

    .line 982
    :goto_1d8
    iget-object v4, v1, Lcom/chimeranft/core/Main;->getChatFullUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    if-eqz v4, :cond_1de

    const/4 v4, 0x1

    goto :goto_1df

    :cond_1de
    const/4 v4, 0x0

    .line 983
    :goto_1df
    iget-object v5, v1, Lcom/chimeranft/core/Main;->botVerifIconSlot:Lcom/chimeranft/core/HookSlot;

    if-eqz v5, :cond_1e5

    const/4 v5, 0x1

    goto :goto_1e6

    :cond_1e5
    const/4 v5, 0x0

    .line 984
    :goto_1e6
    iget-object v7, v1, Lcom/chimeranft/core/Main;->dialogCellBadgeUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    if-eqz v7, :cond_1ec

    const/4 v7, 0x1

    goto :goto_1ed

    :cond_1ec
    const/4 v7, 0x0

    .line 985
    :goto_1ed
    iget-object v8, v1, Lcom/chimeranft/core/Main;->exteraBadgeSlot:Lcom/chimeranft/core/HookSlot;

    if-eqz v8, :cond_1f3

    const/4 v8, 0x1

    goto :goto_1f4

    :cond_1f3
    const/4 v8, 0x0

    .line 986
    :goto_1f4
    iget-object v10, v1, Lcom/chimeranft/core/Main;->exteraSecondarySlot:Lcom/chimeranft/core/HookSlot;

    if-eqz v10, :cond_1fa

    const/4 v10, 0x1

    goto :goto_1fb

    :cond_1fa
    const/4 v10, 0x0

    .line 987
    :goto_1fb
    iget-object v11, v1, Lcom/chimeranft/core/Main;->exteraBadgeSourceSlot:Lcom/chimeranft/core/HookSlot;

    if-eqz v11, :cond_201

    const/4 v11, 0x1

    goto :goto_202

    :cond_201
    const/4 v11, 0x0

    .line 988
    :goto_202
    iget-object v12, v1, Lcom/chimeranft/core/Main;->chatResumeUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    if-eqz v12, :cond_208

    const/4 v12, 0x1

    goto :goto_209

    :cond_208
    const/4 v12, 0x0

    .line 989
    :goto_209
    iget-object v13, v1, Lcom/chimeranft/core/Main;->putUserIdentityUnhooks:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 990
    iget-object v14, v1, Lcom/chimeranft/core/Main;->chatMessageIdentitySlots:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 991
    iget-object v15, v1, Lcom/chimeranft/core/Main;->emojiFreezeSlot:Lcom/chimeranft/core/HookSlot;

    if-eqz v15, :cond_21a

    const/4 v6, 0x1

    .line 992
    :cond_21a
    iget-object v9, v1, Lcom/chimeranft/core/Main;->flingSlots:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_225
    .catchall {:try_start_1ae .. :try_end_225} :catchall_13

    :try_start_225
    const-string v1, "getUser="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " getUserFull="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " getChat="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " getChatFull="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " botVerifIcon="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " dialogCellBadge="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " exteraBadge="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " exteraSecondary="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " exteraSource="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " chatActivity="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " putUserIdentity="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " chatMessageIdentity="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " emojiFreeze="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " flingSlots="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_299
    .catchall {:try_start_225 .. :try_end_299} :catchall_29e

    move-object/from16 v1, p0

    .line 979
    :try_start_29b
    iput-object v0, v1, Lcom/chimeranft/core/Main;->hookStatus:Ljava/lang/String;
    :try_end_29d
    .catchall {:try_start_29b .. :try_end_29d} :catchall_13

    goto :goto_2ba

    :catchall_29e
    move-exception v0

    move-object/from16 v1, p0

    .line 995
    :goto_2a1
    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, v0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hook FAIL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/Main;->hookStatus:Ljava/lang/String;

    :goto_2ba
    return-void
.end method

.method private final installProfileHook()V
    .registers 10

    .line 2538
    invoke-static {}, Lcom/chimeranft/core/ForkBootstrap;->directHostCallsEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    :catchall_6
    :goto_6
    move-object v1, p0

    goto/16 :goto_176

    .line 2541
    :cond_9
    :try_start_9
    const-string v0, "org.telegram.ui.ProfileActivity"

    invoke-static {v0}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_12

    goto :goto_6

    .line 2544
    :cond_12
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_6

    const-string v3, "onResume"

    const/4 v7, 0x0

    if-eqz v1, :cond_3a

    :try_start_23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 2546
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-static {v1}, Lcom/chimeranft/core/Badges$Companion$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_3b

    :cond_3a
    move-object v1, v7

    :goto_3b
    if-nez v1, :cond_62

    .line 2554
    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    :cond_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 2556
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-static {v4}, Lcom/chimeranft/core/Badges$Companion$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v5

    if-nez v5, :cond_45

    move-object v1, v4

    :cond_62
    if-nez v1, :cond_65

    goto :goto_6

    :cond_65
    const/4 v0, 0x1

    .line 2565
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2566
    sget-object v3, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    new-instance v4, Lcom/chimeranft/core/Main$installProfileHook$1;

    invoke-direct {v4, v2, p0}, Lcom/chimeranft/core/Main$installProfileHook$1;-><init>(Ljava/lang/Class;Lcom/chimeranft/core/Main;)V

    invoke-virtual {v3, v1, v4}, Lcom/chimeranft/core/HookSlot$Companion;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v1

    iput-object v1, p0, Lcom/chimeranft/core/Main;->profileResumeUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 2614
    const-string v3, "onFragmentCreate"
    :try_end_78
    .catchall {:try_start_23 .. :try_end_78} :catchall_6

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, v2

    move-object v1, p0

    :try_start_7c
    invoke-direct/range {v1 .. v6}, Lcom/chimeranft/core/Main;->hookTracePhase(Ljava/lang/Class;Ljava/lang/String;ILjava/lang/Class;Z)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v3

    iput-object v3, v1, Lcom/chimeranft/core/Main;->profileCreateUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 2615
    const-string v3, "createView"

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v5, v2

    invoke-direct/range {v1 .. v6}, Lcom/chimeranft/core/Main;->hookTracePhase(Ljava/lang/Class;Ljava/lang/String;ILjava/lang/Class;Z)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v3

    iput-object v3, v1, Lcom/chimeranft/core/Main;->profileViewUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 2618
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v3

    :cond_95
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_99
    .catchall {:try_start_7c .. :try_end_99} :catchall_176

    const-string v5, "onPause"

    if-eqz v4, :cond_b4

    :try_start_9d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 2620
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_95

    invoke-static {v4}, Lcom/chimeranft/core/Badges$Companion$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v6

    if-nez v6, :cond_95

    move-object v7, v4

    :cond_b4
    if-nez v7, :cond_db

    .line 2627
    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v3

    :cond_be
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_db

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 2629
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_be

    invoke-static {v4}, Lcom/chimeranft/core/Badges$Companion$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v6

    if-nez v6, :cond_be

    move-object v7, v4

    :cond_db
    if-eqz v7, :cond_ed

    .line 2637
    invoke-virtual {v7, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2638
    sget-object v3, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    new-instance v4, Lcom/chimeranft/core/Main$installProfileHook$2;

    invoke-direct {v4, p0}, Lcom/chimeranft/core/Main$installProfileHook$2;-><init>(Lcom/chimeranft/core/Main;)V

    invoke-virtual {v3, v7, v4}, Lcom/chimeranft/core/HookSlot$Companion;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v3

    iput-object v3, v1, Lcom/chimeranft/core/Main;->profilePauseUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 2660
    :cond_ed
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v3

    :cond_f5
    :goto_f5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_f9
    .catchall {:try_start_9d .. :try_end_f9} :catchall_176

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    if-eqz v4, :cond_12f

    :try_start_fe
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 2662
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "updateProfileData"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f5

    invoke-static {v4}, Lcom/chimeranft/core/Badges$Companion$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v7

    if-ne v7, v0, :cond_f5

    .line 2663
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    aget-object v7, v7, v6

    if-eq v7, v5, :cond_11f

    goto :goto_f5

    .line 2665
    :cond_11f
    invoke-virtual {v4, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2666
    sget-object v3, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    new-instance v7, Lcom/chimeranft/core/Main$installProfileHook$3;

    invoke-direct {v7, v2, p0}, Lcom/chimeranft/core/Main$installProfileHook$3;-><init>(Ljava/lang/Class;Lcom/chimeranft/core/Main;)V

    invoke-virtual {v3, v4, v7}, Lcom/chimeranft/core/HookSlot$Companion;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v3

    iput-object v3, v1, Lcom/chimeranft/core/Main;->profileDataUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 2699
    :cond_12f
    const-string v3, "org.telegram.ui.Components.SharedMediaLayout"

    invoke-static {v3}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_176

    .line 2702
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v3

    :cond_13f
    :goto_13f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_176

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 2704
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "updateTabs"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13f

    invoke-static {v4}, Lcom/chimeranft/core/Badges$Companion$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v7

    if-ne v7, v0, :cond_13f

    .line 2705
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    aget-object v7, v7, v6

    if-eq v7, v5, :cond_166

    goto :goto_13f

    .line 2707
    :cond_166
    invoke-virtual {v4, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2708
    sget-object v0, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    new-instance v3, Lcom/chimeranft/core/Main$installProfileHook$4;

    invoke-direct {v3, v2, p0}, Lcom/chimeranft/core/Main$installProfileHook$4;-><init>(Ljava/lang/Class;Lcom/chimeranft/core/Main;)V

    invoke-virtual {v0, v4, v3}, Lcom/chimeranft/core/HookSlot$Companion;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v0

    iput-object v0, v1, Lcom/chimeranft/core/Main;->profileTabsUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_176
    .catchall {:try_start_fe .. :try_end_176} :catchall_176

    :catchall_176
    :cond_176
    :goto_176
    return-void
.end method

.method private final declared-synchronized installSupporterPopupHooks()V
    .registers 11

    monitor-enter p0

    .line 2322
    :try_start_1
    iget-boolean v0, p0, Lcom/chimeranft/core/Main;->supporterHooksInstalled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 2323
    :cond_7
    :try_start_7
    iget v0, p0, Lcom/chimeranft/core/Main;->supporterScanAttempts:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/chimeranft/core/Main;->supporterScanAttempts:I

    sget v2, Lcom/chimeranft/core/Main;->SUPPORTER_SCAN_ATTEMPTS:I

    if-le v0, v2, :cond_18

    .line 2325
    iput-boolean v1, p0, Lcom/chimeranft/core/Main;->supporterHooksInstalled:Z
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_15

    .line 2326
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    goto/16 :goto_10f

    .line 2331
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/chimeranft/core/Main;->supporterBulletinActionUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    .line 2332
    :goto_20
    iget-object v3, p0, Lcom/chimeranft/core/Main;->supporterPopupUnhooks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v1

    .line 2333
    iget-object v4, p0, Lcom/chimeranft/core/Main;->supporterDeepLinkUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_15

    if-eqz v4, :cond_2d

    const/4 v4, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v4, 0x0

    :goto_2e
    const/4 v5, 0x0

    .line 2336
    :try_start_2f
    iget-object v6, p0, Lcom/chimeranft/core/Main;->supporterBulletinActionUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    if-nez v6, :cond_59

    .line 2338
    const-string v6, "com.exteragram.messenger.badges.BadgesController$$ExternalSyntheticLambda0"

    invoke-static {v6}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    if-nez v6, :cond_3c

    const/4 v0, 0x1

    :cond_3c
    if-eqz v6, :cond_59

    .line 2342
    const-string v7, "run"

    invoke-virtual {v6, v7, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 2343
    invoke-virtual {v6, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2344
    sget-object v7, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    new-instance v8, Lcom/chimeranft/core/Main$installSupporterPopupHooks$1;

    invoke-direct {v8}, Lcom/chimeranft/core/Main$installSupporterPopupHooks$1;-><init>()V

    invoke-virtual {v7, v6, v8}, Lcom/chimeranft/core/HookSlot$Companion;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v6

    iput-object v6, p0, Lcom/chimeranft/core/Main;->supporterBulletinActionUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_54
    .catchall {:try_start_2f .. :try_end_54} :catchall_59

    if-eqz v6, :cond_58

    const/4 v0, 0x1

    goto :goto_59

    :cond_58
    const/4 v0, 0x0

    .line 2366
    :catchall_59
    :cond_59
    :goto_59
    :try_start_59
    iget-object v6, p0, Lcom/chimeranft/core/Main;->supporterPopupUnhooks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b0

    .line 2368
    const-string v6, "com.exteragram.messenger.components.SupporterBottomSheet"

    invoke-static {v6}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    if-nez v6, :cond_6a

    const/4 v3, 0x1

    :cond_6a
    if-eqz v6, :cond_b0

    .line 2372
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v6

    :cond_74
    :goto_74
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Method;

    .line 2374
    const-string v8, "showAlert"

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_74

    invoke-static {v7}, Lcom/chimeranft/core/Badges$Companion$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v8

    if-ge v8, v1, :cond_93

    goto :goto_74

    .line 2375
    :cond_93
    invoke-virtual {v7, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2376
    sget-object v8, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    new-instance v9, Lcom/chimeranft/core/Main$installSupporterPopupHooks$2;

    invoke-direct {v9}, Lcom/chimeranft/core/Main$installSupporterPopupHooks$2;-><init>()V

    invoke-virtual {v8, v7, v9}, Lcom/chimeranft/core/HookSlot$Companion;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v7

    if-eqz v7, :cond_74

    .line 2390
    iget-object v8, p0, Lcom/chimeranft/core/Main;->supporterPopupUnhooks:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_74

    .line 2392
    :cond_a9
    iget-object v6, p0, Lcom/chimeranft/core/Main;->supporterPopupUnhooks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3
    :try_end_af
    .catchall {:try_start_59 .. :try_end_af} :catchall_b0

    xor-int/2addr v3, v1

    .line 2400
    :catchall_b0
    :cond_b0
    :try_start_b0
    iget-object v6, p0, Lcom/chimeranft/core/Main;->supporterDeepLinkUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;

    if-nez v6, :cond_103

    .line 2402
    const-string v6, "com.exteragram.messenger.utils.IntentsController"

    invoke-static {v6}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    if-nez v6, :cond_bd

    const/4 v4, 0x1

    :cond_bd
    if-eqz v6, :cond_103

    .line 2407
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v6

    :cond_c7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Method;

    .line 2409
    const-string v8, "handleIntent"

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c7

    invoke-static {v7}, Lcom/chimeranft/core/Badges$Companion$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v8

    if-ne v8, v1, :cond_c7

    move-object v5, v7

    goto :goto_e9

    :catchall_e7
    nop

    goto :goto_103

    :cond_e9
    :goto_e9
    if-nez v5, :cond_ec

    const/4 v4, 0x1

    :cond_ec
    if-eqz v5, :cond_103

    .line 2418
    invoke-virtual {v5, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 2419
    sget-object v6, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    new-instance v7, Lcom/chimeranft/core/Main$installSupporterPopupHooks$4;

    invoke-direct {v7}, Lcom/chimeranft/core/Main$installSupporterPopupHooks$4;-><init>()V

    invoke-virtual {v6, v5, v7}, Lcom/chimeranft/core/HookSlot$Companion;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v5

    iput-object v5, p0, Lcom/chimeranft/core/Main;->supporterDeepLinkUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_fe
    .catchall {:try_start_b0 .. :try_end_fe} :catchall_e7

    if-eqz v5, :cond_102

    const/4 v4, 0x1

    goto :goto_103

    :cond_102
    const/4 v4, 0x0

    :cond_103
    :goto_103
    if-eqz v0, :cond_10a

    if-eqz v3, :cond_10a

    if-eqz v4, :cond_10a

    goto :goto_10b

    :cond_10a
    const/4 v1, 0x0

    .line 2453
    :goto_10b
    :try_start_10b
    iput-boolean v1, p0, Lcom/chimeranft/core/Main;->supporterHooksInstalled:Z
    :try_end_10d
    .catchall {:try_start_10b .. :try_end_10d} :catchall_15

    .line 2454
    monitor-exit p0

    return-void

    :goto_10f
    :try_start_10f
    monitor-exit p0
    :try_end_110
    .catchall {:try_start_10f .. :try_end_110} :catchall_15

    throw v0
.end method

.method private final declared-synchronized installTransitionWindowHooks()V
    .registers 8

    monitor-enter p0

    .line 1345
    :try_start_1
    iget-object v0, p0, Lcom/chimeranft/core/Main;->transitionUnhooks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a6

    if-nez v0, :cond_b

    monitor-exit p0

    return-void

    :cond_b
    const/4 v0, 0x1

    .line 1348
    :try_start_c
    const-string v1, "org.telegram.ui.ActionBar.BaseFragment"

    invoke-static {v1}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_75

    .line 1351
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 1353
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onTransitionAnimationStart"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1354
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onTransitionAnimationEnd"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v3, :cond_40

    if-eqz v4, :cond_1c

    .line 1356
    :cond_40
    invoke-static {v2}, Lcom/chimeranft/core/Badges$Companion$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1c

    .line 1357
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    .line 1358
    aget-object v5, v4, v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_1c

    aget-object v4, v4, v0

    if-eq v4, v6, :cond_57

    goto :goto_1c

    .line 1359
    :cond_57
    invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1362
    sget-object v4, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    if-eqz v3, :cond_64

    .line 1363
    new-instance v3, Lcom/chimeranft/core/Main$installTransitionWindowHooks$1;

    invoke-direct {v3}, Lcom/chimeranft/core/Main$installTransitionWindowHooks$1;-><init>()V

    goto :goto_69

    .line 1369
    :cond_64
    new-instance v3, Lcom/chimeranft/core/Main$installTransitionWindowHooks$2;

    invoke-direct {v3}, Lcom/chimeranft/core/Main$installTransitionWindowHooks$2;-><init>()V

    .line 1362
    :goto_69
    invoke-virtual {v4, v2, v3}, Lcom/chimeranft/core/HookSlot$Companion;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 1373
    iget-object v3, p0, Lcom/chimeranft/core/Main;->transitionUnhooks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_74
    .catchall {:try_start_c .. :try_end_74} :catchall_75

    goto :goto_1c

    .line 1381
    :catchall_75
    :cond_75
    :try_start_75
    const-string v1, "org.telegram.ui.ActionBar.BottomSheet"

    invoke-static {v1}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_7f

    const/4 v2, 0x0

    goto :goto_87

    .line 1382
    :cond_7f
    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    const-string v3, "show"

    # invokes: Lcom/chimeranft/core/Main$Companion;->findNoArg(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    invoke-static {v2, v1, v3}, Lcom/chimeranft/core/Main$Companion;->access$findNoArg(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    :goto_87
    if-eqz v2, :cond_a4

    .line 1385
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, v1, :cond_a4

    .line 1387
    invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1388
    sget-object v0, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    new-instance v1, Lcom/chimeranft/core/Main$installTransitionWindowHooks$4;

    invoke-direct {v1}, Lcom/chimeranft/core/Main$installTransitionWindowHooks$4;-><init>()V

    invoke-virtual {v0, v2, v1}, Lcom/chimeranft/core/HookSlot$Companion;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v0

    if-eqz v0, :cond_a4

    .line 1392
    iget-object v1, p0, Lcom/chimeranft/core/Main;->transitionUnhooks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a4
    .catchall {:try_start_75 .. :try_end_a4} :catchall_a4

    .line 1397
    :catchall_a4
    :cond_a4
    monitor-exit p0

    return-void

    :catchall_a6
    move-exception v0

    :try_start_a7
    monitor-exit p0
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    throw v0
.end method

.method private final declared-synchronized installTypingWindowHook()V
    .registers 7

    monitor-enter p0

    .line 1296
    :try_start_1
    invoke-static {}, Lcom/chimeranft/core/ForkBootstrap;->directHostCallsEnabled()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_6c

    if-eqz v0, :cond_9

    monitor-exit p0

    return-void

    .line 1297
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/chimeranft/core/Main;->typingWindowUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_6c

    if-eqz v0, :cond_f

    monitor-exit p0

    return-void

    .line 1300
    :cond_f
    :try_start_f
    const-string v0, "org.telegram.ui.Components.ChatActivityEnterView"

    invoke-static {v0}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_6a

    if-nez v0, :cond_19

    .line 1301
    monitor-exit p0

    return-void

    .line 1302
    :cond_19
    :try_start_19
    sget-object v1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    const-string v2, "updateSendButtonPaid"

    # invokes: Lcom/chimeranft/core/Main$Companion;->findNoArg(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    invoke-static {v1, v0, v2}, Lcom/chimeranft/core/Main$Companion;->access$findNoArg(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_56

    .line 1306
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    :cond_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 1308
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "checkSendButton"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-static {v3}, Lcom/chimeranft/core/Badges$Companion$$ExternalSyntheticBackport0;->m(Ljava/lang/reflect/Method;)I

    move-result v4

    if-ne v4, v2, :cond_2c

    .line 1309
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    :try_end_53
    .catchall {:try_start_19 .. :try_end_53} :catchall_6a

    if-ne v4, v5, :cond_2c

    move-object v1, v3

    :cond_56
    if-nez v1, :cond_5a

    .line 1316
    monitor-exit p0

    return-void

    .line 1317
    :cond_5a
    :try_start_5a
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1318
    sget-object v0, Lcom/chimeranft/core/HookSlot;->Companion:Lcom/chimeranft/core/HookSlot$Companion;

    new-instance v2, Lcom/chimeranft/core/Main$installTypingWindowHook$1;

    invoke-direct {v2}, Lcom/chimeranft/core/Main$installTypingWindowHook$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/chimeranft/core/HookSlot$Companion;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/Main;->typingWindowUnhook:Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_6a
    .catchall {:try_start_5a .. :try_end_6a} :catchall_6a

    .line 1326
    :catchall_6a
    monitor-exit p0

    return-void

    :catchall_6c
    move-exception v0

    :try_start_6d
    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v0
.end method

.method private final invalidateControllerCache()V
    .registers 3

    const/4 v0, 0x0

    .line 2837
    iput-object v0, p0, Lcom/chimeranft/core/Main;->controllerCache:Ljava/lang/Object;

    const/4 v1, -0x1

    .line 2838
    iput v1, p0, Lcom/chimeranft/core/Main;->controllerAccount:I

    .line 2839
    iput-object v0, p0, Lcom/chimeranft/core/Main;->controllerGetUser:Ljava/lang/reflect/Method;

    .line 2840
    iput-object v0, p0, Lcom/chimeranft/core/Main;->selfUserCached:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    .line 2841
    iput-wide v0, p0, Lcom/chimeranft/core/Main;->selfUserAppliedRevision:J

    return-void
.end method

.method private final isChimeraSupporterProfileVisible()Z
    .registers 8

    const/4 v0, 0x0

    .line 254
    :try_start_1
    iget-object v1, p0, Lcom/chimeranft/core/Main;->activeProfileActivity:Ljava/lang/Object;

    if-eqz v1, :cond_2c

    .line 255
    iget-object v2, p0, Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;

    if-nez v2, :cond_a

    goto :goto_2c

    .line 256
    :cond_a
    const-string v2, "userId"

    invoke-static {v1, v2}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1c

    .line 257
    const-string v2, "dialogId"

    invoke-static {v1, v2}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v2

    :cond_1c
    cmp-long v1, v2, v4

    if-lez v1, :cond_2c

    .line 258
    iget-object v1, p0, Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Lcom/chimeranft/core/Badges;->hasSupporterUser(J)Z

    move-result v1
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2c

    if-eqz v1, :cond_2c

    const/4 v0, 0x1

    :catchall_2c
    :cond_2c
    :goto_2c
    return v0
.end method

.method private final isDialogChat(Ljava/lang/Object;)Z
    .registers 3

    if-eqz p1, :cond_c

    .line 2533
    const-string v0, "currentChat"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public static final isHookDisabled(Ljava/lang/String;)I
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->isHookDisabled(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final isMarketSpendEnabled()I
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->isMarketSpendEnabled()I

    move-result v0

    return v0
.end method

.method public static final isOptimizationEnabled(Ljava/lang/String;)I
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->isOptimizationEnabled(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private final isSelfProfile(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 2909
    :cond_4
    const-string v1, "userId"

    invoke-static {p1, v1}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_16

    .line 2910
    const-string v1, "dialogId"

    invoke-static {p1, v1}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    .line 2911
    :cond_16
    iget-wide v3, p0, Lcom/chimeranft/core/Main;->realId:J

    cmp-long p1, v1, v3

    if-nez p1, :cond_1e

    const/4 p1, 0x1

    return p1

    :cond_1e
    return v0
.end method

.method public static final localAccountId(Ljava/lang/Object;)J
    .registers 3

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->localAccountId(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method private final maybeBumpChannelGifts(Lcom/chimeranft/core/SyncClient;Ljava/lang/Object;)V
    .registers 13

    .line 2297
    const-string v0, "stargiftsCount"

    const-string v1, "stargifts_count"

    if-eqz p1, :cond_50

    if-nez p2, :cond_9

    goto :goto_50

    .line 2298
    :cond_9
    :try_start_9
    const-string v2, "id"

    invoke-static {p2, v2}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v2, 0x0

    cmp-long v6, v4, v2

    if-gtz v6, :cond_16

    goto :goto_50

    .line 2303
    :cond_16
    iget-object v3, p0, Lcom/chimeranft/core/Main;->channelGiftBumpMs:Lcom/chimeranft/core/LongStamps;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/chimeranft/core/Main;->CHANNEL_GIFT_BUMP_MS:J

    invoke-virtual/range {v3 .. v9}, Lcom/chimeranft/core/LongStamps;->throttled(JJJ)Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_50

    :cond_25
    neg-long v2, v4

    .line 2305
    invoke-virtual {p1, v2, v3}, Lcom/chimeranft/core/SyncClient;->requestRemoteState(J)V

    .line 2306
    invoke-virtual {p1, v2, v3}, Lcom/chimeranft/core/SyncClient;->getCachedRecord(J)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_30

    goto :goto_50

    .line 2308
    :cond_30
    sget-object v2, Lcom/chimeranft/core/SyncClient;->Companion:Lcom/chimeranft/core/SyncClient$Companion;

    invoke-virtual {v2, p1}, Lcom/chimeranft/core/SyncClient$Companion;->remoteGiftCount(Lorg/json/JSONObject;)I

    move-result p1

    if-gtz p1, :cond_39

    goto :goto_50

    .line 2310
    :cond_39
    invoke-static {p2, v1}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p2, v0}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    int-to-long v4, p1

    cmp-long v6, v4, v2

    if-lez v6, :cond_50

    .line 2313
    invoke-static {p2, v1, p1}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z

    .line 2314
    invoke-static {p2, v0, p1}, Lcom/chimeranft/core/Refl;->setNumeric(Ljava/lang/Object;Ljava/lang/String;I)Z
    :try_end_50
    .catchall {:try_start_9 .. :try_end_50} :catchall_50

    :catchall_50
    :cond_50
    :goto_50
    return-void
.end method

.method public static final mergeState(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->mergeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final messagesControllerFor(I)Ljava/lang/Object;
    .registers 9

    .line 2815
    iget-object v0, p0, Lcom/chimeranft/core/Main;->controllerCache:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 2816
    iget v1, p0, Lcom/chimeranft/core/Main;->controllerAccount:I

    if-ne v1, p1, :cond_9

    return-object v0

    :cond_9
    const/4 v0, 0x1

    .line 2818
    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v2, v4, v3

    .line 2817
    const-string v2, "org.telegram.messenger.MessagesController"

    const-string v5, "getInstance"

    invoke-static {v2, v5, v1, v4}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_25

    const/4 p1, 0x0

    return-object p1

    .line 2820
    :cond_25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v3

    const-string v6, "getUser"

    invoke-static {v2, v6, v4}, Lcom/chimeranft/core/Refl;->method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 2823
    iput-object v2, p0, Lcom/chimeranft/core/Main;->controllerGetUser:Ljava/lang/reflect/Method;

    .line 2824
    iput-boolean v0, p0, Lcom/chimeranft/core/Main;->controllerGetUserBoxed:Z

    goto :goto_4c

    .line 2828
    :cond_3c
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Class;

    aput-object v5, v0, v3

    invoke-static {v2, v6, v0}, Lcom/chimeranft/core/Refl;->method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/Main;->controllerGetUser:Ljava/lang/reflect/Method;

    .line 2829
    iput-boolean v3, p0, Lcom/chimeranft/core/Main;->controllerGetUserBoxed:Z

    .line 2831
    :goto_4c
    iput p1, p0, Lcom/chimeranft/core/Main;->controllerAccount:I

    .line 2832
    iput-object v1, p0, Lcom/chimeranft/core/Main;->controllerCache:Ljava/lang/Object;

    return-object v1
.end method

.method private final notifyVisualBalanceChanged()V
    .registers 8

    .line 3111
    new-instance v0, Lcom/chimeranft/core/Main$notifyVisualBalanceChanged$update$1;

    invoke-direct {v0, p0}, Lcom/chimeranft/core/Main$notifyVisualBalanceChanged$update$1;-><init>(Lcom/chimeranft/core/Main;)V

    .line 3118
    :try_start_5
    const-string v1, "org.telegram.messenger.AndroidUtilities"

    invoke-static {v1}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 3121
    const-string v2, "runOnUIThread"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Runnable;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 3122
    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v6

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    return-void

    .line 3128
    :catchall_24
    :cond_24
    invoke-virtual {v0}, Lcom/chimeranft/core/Main$notifyVisualBalanceChanged$update$1;->run()V

    return-void
.end method

.method public static final notifyVisualBalanceChangedNow()V
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->notifyVisualBalanceChangedNow()V

    return-void
.end method

.method private final notifyVisualBalanceChangedOnUi()V
    .registers 9

    .line 3134
    const-string v0, "org.telegram.messenger.NotificationCenter"

    .line 3136
    :try_start_2
    iget-object v1, p0, Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;

    if-eqz v1, :cond_c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/chimeranft/core/GiftHook;->refreshVisualState()V

    .line 3137
    :cond_c
    const-string v1, "getInstance"

    .line 3138
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    iget v6, p0, Lcom/chimeranft/core/Main;->currentSlot:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v5

    .line 3137
    invoke-static {v0, v1, v4, v7}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_27

    goto :goto_51

    .line 3140
    :cond_27
    const-string v4, "starBalanceUpdated"

    invoke-static {v0, v4, v5}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    if-gtz v4, :cond_35

    .line 3141
    const-string v4, "starsBalanceUpdated"

    invoke-static {v0, v4, v5}, Lcom/chimeranft/core/Refl;->staticInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    :cond_35
    if-lez v4, :cond_51

    .line 3143
    const-string v0, "postNotificationName"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v2, v7, v5

    const-class v2, [Ljava/lang/Object;

    aput-object v2, v7, v3

    .line 3144
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v5

    aput-object v4, v6, v3

    .line 3143
    invoke-static {v1, v0, v7, v6}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catchall {:try_start_2 .. :try_end_51} :catchall_51

    :catchall_51
    :cond_51
    :goto_51
    return-void
.end method

.method private final onProfileResume(Ljava/lang/Object;)V
    .registers 16

    if-nez p1, :cond_5

    :goto_2
    move-object v4, p0

    goto/16 :goto_106

    .line 2922
    :cond_5
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->scheduleBadgeHookRetry()V

    .line 2923
    const-string v0, "userId"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1a

    .line 2924
    const-string v0, "dialogId"

    invoke-static {p1, v0}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    :cond_1a
    move-wide v6, v0

    cmp-long v0, v6, v2

    if-gtz v0, :cond_20

    goto :goto_2

    .line 2926
    :cond_20
    iget-object v0, p0, Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;

    if-eqz v0, :cond_2a

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v6, v7}, Lcom/chimeranft/core/Badges;->ensureExteraCacheFor(J)Z

    .line 2930
    :cond_2a
    iget-object v0, p0, Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;

    if-eqz v0, :cond_3c

    iget-wide v0, p0, Lcom/chimeranft/core/Main;->realId:J

    cmp-long v2, v6, v0

    if-nez v2, :cond_3c

    iget-object v0, p0, Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/chimeranft/core/SyncClient;->wakeTransfers()V

    .line 2931
    :cond_3c
    iget-object v0, p0, Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;

    if-eqz v0, :cond_46

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v6, v7}, Lcom/chimeranft/core/SyncClient;->activateProfile(J)V

    .line 2932
    :cond_46
    iget-object v0, p0, Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;

    if-eqz v0, :cond_5f

    .line 2934
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v6, v7}, Lcom/chimeranft/core/SyncClient;->getCachedRecord(J)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 2935
    iget-object v1, p0, Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v6, v7, v0}, Lcom/chimeranft/core/GiftHook;->onRemoteRecord(JLorg/json/JSONObject;)V

    .line 2937
    :cond_5f
    iput-object p1, p0, Lcom/chimeranft/core/Main;->activeProfileActivity:Ljava/lang/Object;

    .line 2938
    iget-wide v0, p0, Lcom/chimeranft/core/Main;->activeProfileGeneration:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/chimeranft/core/Main;->activeProfileGeneration:J

    iget-wide v8, p0, Lcom/chimeranft/core/Main;->activeProfileGeneration:J

    .line 2939
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2940
    iget-wide v4, p0, Lcom/chimeranft/core/Main;->realId:J

    const/4 v12, 0x1

    const/4 v13, 0x0

    cmp-long v10, v6, v4

    if-eqz v10, :cond_78

    const/4 v4, 0x1

    goto :goto_79

    :cond_78
    const/4 v4, 0x0

    :goto_79
    if-eqz v4, :cond_92

    .line 2943
    iget-wide v10, p0, Lcom/chimeranft/core/Main;->profileFastOpens:J

    add-long/2addr v10, v2

    iput-wide v10, p0, Lcom/chimeranft/core/Main;->profileFastOpens:J

    .line 2944
    iget-object v5, p0, Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;

    if-eqz v5, :cond_92

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7}, Lcom/chimeranft/core/SyncClient;->getCachedRecord(J)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_92

    iget-wide v10, p0, Lcom/chimeranft/core/Main;->profileFastCacheHits:J

    add-long/2addr v10, v2

    iput-wide v10, p0, Lcom/chimeranft/core/Main;->profileFastCacheHits:J

    :cond_92
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 2946
    invoke-static {p0, p1, v13, v2, v3}, Lcom/chimeranft/core/Main;->ensureProfileGiftSection$default(Lcom/chimeranft/core/Main;Ljava/lang/Object;ZILjava/lang/Object;)Z

    move-result v2

    .line 2947
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long/2addr v10, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr v10, v0

    if-eqz v4, :cond_af

    .line 2950
    iget-wide v0, p0, Lcom/chimeranft/core/Main;->profileFastApplyTotalUs:J

    add-long/2addr v0, v10

    iput-wide v0, p0, Lcom/chimeranft/core/Main;->profileFastApplyTotalUs:J

    .line 2951
    iget-wide v0, p0, Lcom/chimeranft/core/Main;->profileFastApplyMaxUs:J

    cmp-long v3, v10, v0

    if-lez v3, :cond_af

    iput-wide v10, p0, Lcom/chimeranft/core/Main;->profileFastApplyMaxUs:J

    :cond_af
    const-wide/16 v10, 0x46

    move-object v4, p0

    move-object v5, p1

    .line 2956
    invoke-direct/range {v4 .. v11}, Lcom/chimeranft/core/Main;->scheduleProfileRestamp(Ljava/lang/Object;JJJ)V

    .line 2960
    iget-object p1, v4, Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;

    if-eqz p1, :cond_c8

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v6, v7}, Lcom/chimeranft/core/Badges;->hasSupporterUser(J)Z

    move-result p1

    if-eqz p1, :cond_c8

    const-wide/16 v10, 0x1a4

    .line 2962
    invoke-direct/range {v4 .. v11}, Lcom/chimeranft/core/Main;->scheduleProfileRestamp(Ljava/lang/Object;JJJ)V

    .line 2964
    :cond_c8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2965
    iget-wide v8, v4, Lcom/chimeranft/core/Main;->lastProfileRefreshMs:J

    sub-long v8, v0, v8

    const-wide/16 v10, 0x320

    cmp-long p1, v8, v10

    if-gez p1, :cond_d7

    goto :goto_106

    .line 2966
    :cond_d7
    iput-wide v0, v4, Lcom/chimeranft/core/Main;->lastProfileRefreshMs:J

    .line 2970
    iget-wide v0, v4, Lcom/chimeranft/core/Main;->realId:J

    cmp-long p1, v6, v0

    if-nez p1, :cond_eb

    iget-object p1, v4, Lcom/chimeranft/core/Main;->notifier:Lcom/chimeranft/core/Notifier;

    if-eqz p1, :cond_eb

    if-eqz v2, :cond_eb

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/chimeranft/core/Notifier;->refresh()V

    .line 2971
    :cond_eb
    const-string p1, "sharedMediaLayout"

    invoke-static {v5, p1}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_106

    if-eqz v2, :cond_106

    .line 2976
    :try_start_f5
    const-string v0, "updateTabs"

    new-array v1, v12, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v13

    new-array v2, v12, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v13

    invoke-static {p1, v0, v1, v2}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_106
    .catchall {:try_start_f5 .. :try_end_106} :catchall_106

    :catchall_106
    :cond_106
    :goto_106
    return-void
.end method

.method private final onScrollState(Ljava/lang/Object;IZ)V
    .registers 11

    .line 1400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 1404
    iput-boolean v2, p0, Lcom/chimeranft/core/Main;->accountCheckDue:Z

    .line 1405
    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2, p2}, Lcom/chimeranft/core/Main$Companion;->shouldSuspendReadHooks(I)Z

    move-result p2

    const-wide/16 v3, 0x1

    if-eqz p2, :cond_2b

    .line 1407
    invoke-direct {p0, v0, v1, p3}, Lcom/chimeranft/core/Main;->openScrollWindow(JZ)V

    .line 1408
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/chimeranft/core/Main;->scrollingList:Ljava/lang/ref/WeakReference;

    .line 1409
    iput-boolean p3, p0, Lcom/chimeranft/core/Main;->scrollingListIsChat:Z

    .line 1410
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->startScrollPoll()V

    .line 1414
    invoke-direct {p0, p3}, Lcom/chimeranft/core/Main;->beginFlingPass(Z)V

    if-eqz p3, :cond_2a

    .line 1415
    iget-wide p1, p0, Lcom/chimeranft/core/Main;->chatScrollStarts:J

    add-long/2addr p1, v3

    iput-wide p1, p0, Lcom/chimeranft/core/Main;->chatScrollStarts:J

    :cond_2a
    return-void

    :cond_2b
    const-wide/16 v5, 0x78

    add-long/2addr v5, v0

    .line 1418
    iput-wide v5, p0, Lcom/chimeranft/core/Main;->uiScrollUntilMs:J

    if-nez p3, :cond_3a

    .line 1421
    sget-object p1, Lcom/chimeranft/core/Main;->UI_SCROLL_SETTLE:Lcom/chimeranft/core/Main$Companion$UI_SCROLL_SETTLE$1;

    const-wide/16 p2, 0x8c

    # invokes: Lcom/chimeranft/core/Main$Companion;->postUiStatic(Ljava/lang/Runnable;J)V
    invoke-static {v2, p1, p2, p3}, Lcom/chimeranft/core/Main$Companion;->access$postUiStatic(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Runnable;J)V

    return-void

    :cond_3a
    const-wide/16 p2, 0x60

    add-long/2addr v0, p2

    .line 1424
    invoke-direct {p0, v0, v1}, Lcom/chimeranft/core/Main;->setScrollWindow(J)V

    .line 1425
    iget-wide p2, p0, Lcom/chimeranft/core/Main;->chatScrollStops:J

    add-long/2addr p2, v3

    iput-wide p2, p0, Lcom/chimeranft/core/Main;->chatScrollStops:J

    .line 1426
    new-instance p2, Lcom/chimeranft/core/Main$onScrollState$1;

    invoke-direct {p2, p1, p0}, Lcom/chimeranft/core/Main$onScrollState$1;-><init>(Ljava/lang/Object;Lcom/chimeranft/core/Main;)V

    const-wide/16 v0, 0x70

    # invokes: Lcom/chimeranft/core/Main$Companion;->postUiStatic(Ljava/lang/Runnable;J)V
    invoke-static {v2, p2, v0, v1}, Lcom/chimeranft/core/Main$Companion;->access$postUiStatic(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Runnable;J)V

    return-void
.end method

.method private final openScrollWindow(JZ)V
    .registers 9

    .line 1437
    sget-object v0, Lcom/chimeranft/core/PerformanceGovernor;->Companion:Lcom/chimeranft/core/PerformanceGovernor$Companion;

    sget-wide v1, Lcom/chimeranft/core/Main;->SCROLL_WINDOW_MAX_MS:J

    invoke-virtual {v0, v1, v2}, Lcom/chimeranft/core/PerformanceGovernor$Companion;->beginCriticalInteraction(J)V

    add-long v3, p1, v1

    .line 1438
    iput-wide v3, p0, Lcom/chimeranft/core/Main;->uiScrollUntilMs:J

    const/4 v0, 0x1

    .line 1439
    iput-boolean v0, p0, Lcom/chimeranft/core/Main;->uiScrolling:Z

    if-eqz p3, :cond_14

    add-long/2addr p1, v1

    .line 1440
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Main;->setScrollWindow(J)V

    :cond_14
    return-void
.end method

.method public static final persistAccessDeniedDecision(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .registers 3

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/Main$Companion;->persistAccessDeniedDecision(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result p0

    return p0
.end method

.method public static final persistAccessDeniedDecision(Lorg/json/JSONObject;)Z
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->persistAccessDeniedDecision(Lorg/json/JSONObject;)Z

    move-result p0

    return p0
.end method

.method public static final pinChannelByUsername(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->pinChannelByUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final pinnedChannelRecord()Lorg/json/JSONObject;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->pinnedChannelRecord()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static final pollGifts()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->pollGifts()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final pollHooks()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->pollHooks()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final pollIdentity()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->pollIdentity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final pollPinChannel()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->pollPinChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final pollSync()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->pollSync()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final pollUpgradeAttrs(J)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/Main$Companion;->pollUpgradeAttrs(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final declared-synchronized prefetchExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 3

    monitor-enter p0

    .line 1609
    :try_start_1
    iget-object v0, p0, Lcom/chimeranft/core/Main;->prefetchExec:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_15

    .line 1612
    const-string v0, "chimeranft-chat-prefetch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/chimeranft/core/Safe;->factory(Ljava/lang/String;I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 1611
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/chimeranft/core/Main;->prefetchExec:Ljava/util/concurrent/ExecutorService;

    goto :goto_15

    :catchall_13
    move-exception v0

    goto :goto_19

    .line 1614
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/chimeranft/core/Main;->prefetchExec:Ljava/util/concurrent/ExecutorService;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_13

    monitor-exit p0

    return-object v0

    :goto_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_13

    throw v0
.end method

.method private final prepareChatMessageIdentity(Ljava/lang/Object;Ljava/lang/Object;ZZ)Z
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    if-nez v2, :cond_f

    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_ec

    .line 1901
    :cond_f
    iget-boolean v4, v0, Lcom/chimeranft/core/Main;->chatBroadcastDormant:Z

    const-wide/16 v5, 0x1

    if-eqz v4, :cond_23

    invoke-static {v3}, Lcom/chimeranft/core/Tuning;->optionEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_23

    if-nez p4, :cond_23

    .line 1903
    iget-wide v1, v0, Lcom/chimeranft/core/Main;->chatDormantSkips:J

    add-long/2addr v1, v5

    iput-wide v1, v0, Lcom/chimeranft/core/Main;->chatDormantSkips:J

    return v3

    .line 1906
    :cond_23
    invoke-direct {v0}, Lcom/chimeranft/core/Main;->chatVisualToken()J

    move-result-wide v7

    if-nez p4, :cond_37

    .line 1907
    iget-object v4, v0, Lcom/chimeranft/core/Main;->cellStamps:Lcom/chimeranft/core/CellStamps;

    invoke-virtual {v4, v1, v2, v7, v8}, Lcom/chimeranft/core/CellStamps;->isStamped(Ljava/lang/Object;Ljava/lang/Object;J)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1909
    iget-wide v1, v0, Lcom/chimeranft/core/Main;->chatLayoutSkips:J

    add-long/2addr v1, v5

    iput-wide v1, v0, Lcom/chimeranft/core/Main;->chatLayoutSkips:J

    return v3

    .line 1912
    :cond_37
    invoke-direct {v0, v2}, Lcom/chimeranft/core/Main;->cachedMessageSenderUserId(Ljava/lang/Object;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v4, v10, v12

    if-gtz v4, :cond_47

    .line 1915
    iget-object v4, v0, Lcom/chimeranft/core/Main;->cellStamps:Lcom/chimeranft/core/CellStamps;

    invoke-virtual {v4, v1, v2, v7, v8}, Lcom/chimeranft/core/CellStamps;->stamp(Ljava/lang/Object;Ljava/lang/Object;J)V

    return v3

    .line 1931
    :cond_47
    invoke-direct {v0}, Lcom/chimeranft/core/Main;->ensureAccountFast()V

    .line 1932
    iget-wide v12, v0, Lcom/chimeranft/core/Main;->realId:J

    cmp-long v4, v10, v12

    if-nez v4, :cond_59

    .line 1935
    invoke-direct {v0}, Lcom/chimeranft/core/Main;->applySelfIdentityForCell()V

    .line 1936
    iget-object v4, v0, Lcom/chimeranft/core/Main;->cellStamps:Lcom/chimeranft/core/CellStamps;

    invoke-virtual {v4, v1, v2, v7, v8}, Lcom/chimeranft/core/CellStamps;->stamp(Ljava/lang/Object;Ljava/lang/Object;J)V

    return v3

    :cond_59
    if-eqz p3, :cond_68

    .line 1945
    iget-object v4, v0, Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;

    if-eqz v4, :cond_68

    invoke-direct {v0, v10, v11}, Lcom/chimeranft/core/Main;->shouldFetchChatAuthor(J)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 1946
    invoke-direct {v0, v10, v11}, Lcom/chimeranft/core/Main;->queueAuthorPrefetch(J)V

    .line 1947
    :cond_68
    invoke-direct {v0, v10, v11}, Lcom/chimeranft/core/Main;->hasVisualChatIdentity(J)Z

    move-result v4

    if-nez v4, :cond_81

    if-nez p4, :cond_7b

    .line 1953
    sget-object v4, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v4}, Lcom/chimeranft/core/Main$Companion;->isChatScrollingNow()Z

    move-result v4

    if-eqz v4, :cond_7b

    invoke-direct {v0, v10, v11}, Lcom/chimeranft/core/Main;->addPendingAuthor(J)V

    .line 1954
    :cond_7b
    iget-object v4, v0, Lcom/chimeranft/core/Main;->cellStamps:Lcom/chimeranft/core/CellStamps;

    invoke-virtual {v4, v1, v2, v7, v8}, Lcom/chimeranft/core/CellStamps;->stamp(Ljava/lang/Object;Ljava/lang/Object;J)V

    return v3

    :cond_81
    if-nez p4, :cond_8f

    .line 1958
    sget-object v4, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v4}, Lcom/chimeranft/core/Main$Companion;->isChatScrollingNow()Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 1960
    invoke-direct {v0, v1, v2, v10, v11}, Lcom/chimeranft/core/Main;->deferChatCell(Ljava/lang/Object;Ljava/lang/Object;J)V

    return v3

    .line 1968
    :cond_8f
    const-string v4, "currentUser"

    invoke-static {v1, v4}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_a2

    .line 1969
    const-string v9, "id"

    invoke-static {v4, v9}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v9, v12, v10

    if-eqz v9, :cond_a2

    const/4 v4, 0x0

    :cond_a2
    const/4 v9, 0x1

    if-eqz v4, :cond_ae

    .line 1974
    invoke-direct {v0, v4, v10, v11}, Lcom/chimeranft/core/Main;->stampChatAuthor(Ljava/lang/Object;J)Z

    move-result v12

    move/from16 v16, v12

    const/16 v17, 0x1

    goto :goto_b2

    :cond_ae
    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_b2
    if-eqz v4, :cond_ca

    const/4 v12, 0x1

    .line 1977
    iget-object v9, v0, Lcom/chimeranft/core/Main;->chatAuthorCacheStampMs:Lcom/chimeranft/core/LongStamps;

    const/4 v14, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/16 v18, 0x1

    .line 1978
    sget-wide v14, Lcom/chimeranft/core/Main;->CHAT_AUTHOR_CACHE_STAMP_MS:J

    const/4 v3, 0x1

    const/16 v19, 0x0

    .line 1977
    invoke-virtual/range {v9 .. v15}, Lcom/chimeranft/core/LongStamps;->throttled(JJJ)Z

    move-result v9

    if-nez v9, :cond_da

    goto :goto_cd

    :cond_ca
    const/4 v3, 0x1

    const/16 v19, 0x0

    .line 1980
    :goto_cd
    invoke-direct {v0, v10, v11}, Lcom/chimeranft/core/Main;->cachedUserFor(J)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_da

    if-eq v9, v4, :cond_d8

    .line 1988
    invoke-direct {v0, v9, v10, v11}, Lcom/chimeranft/core/Main;->stampChatAuthor(Ljava/lang/Object;J)Z

    :cond_d8
    const/4 v9, 0x1

    goto :goto_dc

    :cond_da
    move/from16 v9, v17

    :goto_dc
    if-nez v9, :cond_e1

    .line 1998
    iput-boolean v3, v0, Lcom/chimeranft/core/Main;->chatPrepareNeedsAfterPass:Z

    return v19

    .line 2001
    :cond_e1
    iget-object v3, v0, Lcom/chimeranft/core/Main;->cellStamps:Lcom/chimeranft/core/CellStamps;

    invoke-virtual {v3, v1, v2, v7, v8}, Lcom/chimeranft/core/CellStamps;->stamp(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2002
    iget-wide v1, v0, Lcom/chimeranft/core/Main;->chatLayoutApplies:J

    add-long/2addr v1, v5

    iput-wide v1, v0, Lcom/chimeranft/core/Main;->chatLayoutApplies:J

    return v16

    :goto_ec
    return v19
.end method

.method static synthetic prepareChatMessageIdentity$default(Lcom/chimeranft/core/Main;Ljava/lang/Object;Ljava/lang/Object;ZZILjava/lang/Object;)Z
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    const/4 p4, 0x0

    .line 1893
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/chimeranft/core/Main;->prepareChatMessageIdentity(Ljava/lang/Object;Ljava/lang/Object;ZZ)Z

    move-result p0

    return p0
.end method

.method public static final previewSnapshot()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->previewSnapshot()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final pullSelfTest()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->pullSelfTest()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final pushSyncNow()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->pushSyncNow()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final queueAuthorPrefetch(J)V
    .registers 5

    .line 1640
    invoke-direct {p0, p1, p2}, Lcom/chimeranft/core/Main;->addPendingAuthor(J)V

    .line 1641
    iget-boolean p1, p0, Lcom/chimeranft/core/Main;->chatPrefetchFlushArmed:Z

    if-eqz p1, :cond_8

    return-void

    :cond_8
    const/4 p1, 0x1

    .line 1642
    iput-boolean p1, p0, Lcom/chimeranft/core/Main;->chatPrefetchFlushArmed:Z

    .line 1643
    sget-object p1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    sget-object p2, Lcom/chimeranft/core/Main;->CHAT_PREFETCH_FLUSH:Lcom/chimeranft/core/Main$Companion$CHAT_PREFETCH_FLUSH$1;

    const-wide/16 v0, 0x0

    # invokes: Lcom/chimeranft/core/Main$Companion;->postUiStatic(Ljava/lang/Runnable;J)V
    invoke-static {p1, p2, v0, v1}, Lcom/chimeranft/core/Main$Companion;->access$postUiStatic(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Runnable;J)V

    return-void
.end method

.method private final queueRestamp(JZ)V
    .registers 11

    .line 1815
    sget-object v0, Lcom/chimeranft/core/Main;->RESTAMP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_c

    .line 1817
    :try_start_7
    sput-boolean v2, Lcom/chimeranft/core/Main;->restampAll:Z

    goto :goto_31

    :catchall_a
    move-exception p1

    goto :goto_44

    .line 1818
    :cond_c
    sget-boolean p3, Lcom/chimeranft/core/Main;->restampAll:Z

    if-nez p3, :cond_31

    .line 1821
    sget p3, Lcom/chimeranft/core/Main;->restampCount:I

    const/4 v3, 0x0

    :goto_13
    if-ge v3, p3, :cond_21

    sget-object v4, Lcom/chimeranft/core/Main;->restampUids:[J

    aget-wide v5, v4, v3

    cmp-long v4, v5, p1

    if-nez v4, :cond_1e

    goto :goto_31

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1829
    :cond_21
    sget p3, Lcom/chimeranft/core/Main;->restampCount:I

    sget-object v3, Lcom/chimeranft/core/Main;->restampUids:[J

    array-length v4, v3

    if-ne p3, v4, :cond_2b

    .line 1830
    sput-boolean v2, Lcom/chimeranft/core/Main;->restampAll:Z

    goto :goto_31

    :cond_2b
    add-int/lit8 v4, p3, 0x1

    .line 1832
    sput v4, Lcom/chimeranft/core/Main;->restampCount:I

    aput-wide p1, v3, p3

    .line 1835
    :cond_31
    :goto_31
    sget-boolean p1, Lcom/chimeranft/core/Main;->restampArmed:Z

    .line 1836
    sput-boolean v2, Lcom/chimeranft/core/Main;->restampArmed:Z

    .line 1837
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_a

    .line 1815
    monitor-exit v0

    if-nez p1, :cond_43

    .line 1838
    sget-object p1, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    sget-object p2, Lcom/chimeranft/core/Main;->RESTAMP_DRAIN:Lcom/chimeranft/core/Main$Companion$RESTAMP_DRAIN$1;

    const/4 p3, 0x2

    const/4 v0, 0x0

    invoke-static {p1, p2, v1, p3, v0}, Lcom/chimeranft/core/Main$Companion;->postUiAfterScroll$default(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Runnable;ZILjava/lang/Object;)V

    :cond_43
    return-void

    .line 1815
    :goto_44
    monitor-exit v0

    throw p1
.end method

.method private final reapplySelfIdentityAfterEdit()V
    .registers 12

    .line 2892
    iget-object v0, p0, Lcom/chimeranft/core/Main;->hotSeen:Lcom/chimeranft/core/LongStamps;

    iget-wide v1, p0, Lcom/chimeranft/core/Main;->realId:J

    invoke-virtual {v0, v1, v2}, Lcom/chimeranft/core/LongStamps;->forget(J)V

    .line 2893
    iget-object v0, p0, Lcom/chimeranft/core/Main;->fullSeen:Lcom/chimeranft/core/LongStamps;

    iget-wide v1, p0, Lcom/chimeranft/core/Main;->realId:J

    invoke-virtual {v0, v1, v2}, Lcom/chimeranft/core/LongStamps;->forget(J)V

    .line 2894
    iget-object v4, p0, Lcom/chimeranft/core/Main;->activeProfileActivity:Ljava/lang/Object;

    if-nez v4, :cond_13

    goto :goto_2c

    .line 2896
    :cond_13
    const-string v0, "userId"

    invoke-static {v4, v0}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v5, v0, v2

    if-gtz v5, :cond_25

    .line 2897
    const-string v0, "dialogId"

    invoke-static {v4, v0}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    :cond_25
    move-wide v5, v0

    .line 2898
    iget-wide v0, p0, Lcom/chimeranft/core/Main;->realId:J

    cmp-long v2, v5, v0

    if-eqz v2, :cond_2d

    :goto_2c
    return-void

    :cond_2d
    const/4 v0, 0x0

    .line 2899
    invoke-direct {p0, v4, v0}, Lcom/chimeranft/core/Main;->ensureProfileGiftSection(Ljava/lang/Object;Z)Z

    .line 2900
    iget-wide v7, p0, Lcom/chimeranft/core/Main;->activeProfileGeneration:J

    const-wide/16 v9, 0x46

    move-object v3, p0

    .line 2901
    invoke-direct/range {v3 .. v10}, Lcom/chimeranft/core/Main;->scheduleProfileRestamp(Ljava/lang/Object;JJJ)V

    const-wide/16 v9, 0x104

    .line 2902
    invoke-direct/range {v3 .. v10}, Lcom/chimeranft/core/Main;->scheduleProfileRestamp(Ljava/lang/Object;JJJ)V

    const-wide/16 v9, 0x320

    .line 2903
    invoke-direct/range {v3 .. v10}, Lcom/chimeranft/core/Main;->scheduleProfileRestamp(Ljava/lang/Object;JJJ)V

    return-void
.end method

.method private final refresh()V
    .registers 2

    .line 3153
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/Main;->notifier:Lcom/chimeranft/core/Notifier;

    if-eqz v0, :cond_a

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/chimeranft/core/Notifier;->refresh()V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_a

    :catchall_a
    :cond_a
    return-void
.end method

.method public static final reloadAll()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->reloadAll()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final removeGift(J)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/Main$Companion;->removeGift(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final removeGiftCollection(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->removeGiftCollection(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final removeGifts(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->removeGifts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final repaintHeld(ZZZZ)Z
    .registers 5

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/chimeranft/core/Main$Companion;->repaintHeld(ZZZZ)Z

    move-result p0

    return p0
.end method

.method public static final replaceGift(JLjava/lang/String;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/chimeranft/core/Main$Companion;->replaceGift(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final resetHookMetrics()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->resetHookMetrics()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final resetLocalProfile()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->resetLocalProfile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final restampVisibleChatCells([JI)V
    .registers 14

    .line 1845
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/Main;->activeChatFragment:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    .line 1846
    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_a
    if-nez v0, :cond_e

    goto/16 :goto_cd

    .line 1848
    :cond_e
    const-string v1, "chatListView"

    invoke-static {v0, v1}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1c

    .line 1849
    const-string v1, "chatListViewNew"

    invoke-static {v0, v1}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :cond_1c
    if-nez v1, :cond_20

    goto/16 :goto_cd

    .line 1851
    :cond_20
    const-string v2, "getChildCount"

    sget-object v3, Lcom/chimeranft/core/Refl;->NO_SIG:[Ljava/lang/Class;

    sget-object v4, Lcom/chimeranft/core/Refl;->NO_ARGS:[Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1852
    instance-of v3, v2, Ljava/lang/Number;

    if-nez v3, :cond_30

    goto/16 :goto_cd

    .line 1853
    :cond_30
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-gtz v2, :cond_3a

    goto/16 :goto_cd

    :cond_3a
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_3c
    if-ge v4, p2, :cond_46

    .line 1855
    aget-wide v5, p1, v4

    invoke-direct {p0, v5, v6}, Lcom/chimeranft/core/Main;->forgetChatEligibility(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    :cond_46
    const/4 v4, 0x0

    :goto_47
    const/4 v5, 0x1

    if-ge v4, v2, :cond_a2

    .line 1858
    const-string v6, "getChildAt"

    sget-object v7, Lcom/chimeranft/core/Main;->INT_SIG:[Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v8, v9, v3

    invoke-static {v1, v6, v7, v9}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_9f

    .line 1860
    const-string v7, "currentUser"

    invoke-static {v6, v7}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_9f

    if-lez p2, :cond_74

    .line 1862
    sget-object v8, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    const-string v9, "id"

    invoke-static {v7, v9}, Lcom/chimeranft/core/Refl;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v9

    # invokes: Lcom/chimeranft/core/Main$Companion;->containsUid([JIJ)Z
    invoke-static {v8, p1, p2, v9, v10}, Lcom/chimeranft/core/Main$Companion;->access$containsUid(Lcom/chimeranft/core/Main$Companion;[JIJ)Z

    move-result v7

    if-eqz v7, :cond_9f

    .line 1863
    :cond_74
    const-string v7, "currentMessageObject"

    invoke-static {v6, v7}, Lcom/chimeranft/core/Refl;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_9f

    .line 1865
    invoke-direct {p0, v6, v7, v3, v5}, Lcom/chimeranft/core/Main;->prepareChatMessageIdentity(Ljava/lang/Object;Ljava/lang/Object;ZZ)Z

    move-result v5

    if-eqz v5, :cond_9f

    .line 1866
    const-string v5, "invalidate"

    sget-object v8, Lcom/chimeranft/core/Refl;->NO_SIG:[Ljava/lang/Class;

    sget-object v9, Lcom/chimeranft/core/Refl;->NO_ARGS:[Ljava/lang/Object;

    invoke-static {v6, v5, v8, v9}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1871
    sget-object v5, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    # invokes: Lcom/chimeranft/core/Main$Companion;->hasHeavyTextLayout(Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v5, v6, v7}, Lcom/chimeranft/core/Main$Companion;->access$hasHeavyTextLayout(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_98

    .line 1872
    const-string v5, "requestLayout"

    invoke-static {v6, v5, v8, v9}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1873
    :cond_98
    iget-wide v5, p0, Lcom/chimeranft/core/Main;->chatAuthorRestamps:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/chimeranft/core/Main;->chatAuthorRestamps:J

    :cond_9f
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    :cond_a2
    if-lez p2, :cond_cd

    .line 1879
    const-string v1, "getDialogId"

    sget-object v2, Lcom/chimeranft/core/Refl;->NO_SIG:[Ljava/lang/Class;

    sget-object v4, Lcom/chimeranft/core/Refl;->NO_ARGS:[Ljava/lang/Object;

    invoke-static {v0, v1, v2, v4}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1880
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_cd

    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    # invokes: Lcom/chimeranft/core/Main$Companion;->containsUid([JIJ)Z
    invoke-static {v2, p1, p2, v6, v7}, Lcom/chimeranft/core/Main$Companion;->access$containsUid(Lcom/chimeranft/core/Main$Companion;[JIJ)Z

    move-result p1

    if-eqz p1, :cond_cd

    .line 1882
    const-string p1, "updateTitle"

    sget-object p2, Lcom/chimeranft/core/Main;->INT_SIG_BOOL:[Ljava/lang/Class;

    new-array v1, v5, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, v3

    invoke-static {v0, p1, p2, v1}, Lcom/chimeranft/core/Refl;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_cd
    .catchall {:try_start_0 .. :try_end_cd} :catchall_cd

    :catchall_cd
    :cond_cd
    :goto_cd
    return-void
.end method

.method public static final runAfterChatScroll(Ljava/lang/Runnable;)V
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->runAfterChatScroll(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final scheduleBadgeHookRetry()V
    .registers 5

    .line 3017
    iget-boolean v0, p0, Lcom/chimeranft/core/Main;->exteraControllerHooksSettled:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/chimeranft/core/Main;->exteraSourceHookSettled:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/chimeranft/core/Main;->supporterHooksInstalled:Z

    if-eqz v0, :cond_d

    goto :goto_11

    .line 3018
    :cond_d
    iget-boolean v0, p0, Lcom/chimeranft/core/Main;->badgeHookRetryPending:Z

    if-eqz v0, :cond_12

    :goto_11
    return-void

    :cond_12
    const/4 v0, 0x1

    .line 3019
    iput-boolean v0, p0, Lcom/chimeranft/core/Main;->badgeHookRetryPending:Z

    .line 3021
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    new-instance v1, Lcom/chimeranft/core/Main$scheduleBadgeHookRetry$1;

    invoke-direct {v1, p0}, Lcom/chimeranft/core/Main$scheduleBadgeHookRetry$1;-><init>(Lcom/chimeranft/core/Main;)V

    .line 3044
    sget-wide v2, Lcom/chimeranft/core/Main;->BADGE_HOOK_RETRY_MS:J

    .line 3021
    # invokes: Lcom/chimeranft/core/Main$Companion;->postUiStatic(Ljava/lang/Runnable;J)V
    invoke-static {v0, v1, v2, v3}, Lcom/chimeranft/core/Main$Companion;->access$postUiStatic(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Runnable;J)V

    return-void
.end method

.method private final scheduleFlingWatchdog()V
    .registers 5

    .line 1552
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    new-instance v1, Lcom/chimeranft/core/Main$scheduleFlingWatchdog$1;

    invoke-direct {v1, p0}, Lcom/chimeranft/core/Main$scheduleFlingWatchdog$1;-><init>(Lcom/chimeranft/core/Main;)V

    const-wide/16 v2, 0x384

    # invokes: Lcom/chimeranft/core/Main$Companion;->postUiStatic(Ljava/lang/Runnable;J)V
    invoke-static {v0, v1, v2, v3}, Lcom/chimeranft/core/Main$Companion;->access$postUiStatic(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Runnable;J)V

    return-void
.end method

.method private final scheduleHookInstall()V
    .registers 5

    .line 491
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    new-instance v1, Lcom/chimeranft/core/Main$scheduleHookInstall$1;

    invoke-direct {v1, p0}, Lcom/chimeranft/core/Main$scheduleHookInstall$1;-><init>(Lcom/chimeranft/core/Main;)V

    const-wide/16 v2, 0x0

    # invokes: Lcom/chimeranft/core/Main$Companion;->postUiStatic(Ljava/lang/Runnable;J)V
    invoke-static {v0, v1, v2, v3}, Lcom/chimeranft/core/Main$Companion;->access$postUiStatic(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Runnable;J)V

    return-void
.end method

.method private final scheduleProfilePrewarm(JLorg/json/JSONObject;)V
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1c

    if-nez p3, :cond_9

    goto :goto_1c

    .line 2988
    :cond_9
    iget-object v0, p0, Lcom/chimeranft/core/Main;->profilePrepareExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1c

    .line 2989
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_1c

    .line 2992
    :cond_14
    :try_start_14
    new-instance v1, Lcom/chimeranft/core/Main$scheduleProfilePrewarm$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/chimeranft/core/Main$scheduleProfilePrewarm$1;-><init>(Lcom/chimeranft/core/Main;JLorg/json/JSONObject;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1c

    :catchall_1c
    :cond_1c
    :goto_1c
    return-void
.end method

.method private final scheduleProfileRestamp(Ljava/lang/Object;JJJ)V
    .registers 19

    .line 3049
    const-string v0, "org.telegram.messenger.AndroidUtilities"

    if-eqz p1, :cond_4e

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-gtz v3, :cond_b

    goto :goto_4e

    .line 3050
    :cond_b
    new-instance v4, Lcom/chimeranft/core/Main$scheduleProfileRestamp$r$1;

    move-object v5, p0

    move-object v6, p1

    move-wide v9, p2

    move-wide v7, p4

    invoke-direct/range {v4 .. v10}, Lcom/chimeranft/core/Main$scheduleProfileRestamp$r$1;-><init>(Lcom/chimeranft/core/Main;Ljava/lang/Object;JJ)V

    .line 3084
    :try_start_14
    invoke-static {v0}, Lcom/chimeranft/core/Refl;->cls(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_4e

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 3085
    const-class v3, Ljava/lang/Runnable;

    const-string v5, "runOnUIThread"

    if-eqz p1, :cond_3b

    cmp-long v6, p6, v1

    if-lez v6, :cond_3b

    const/4 p1, 0x2

    .line 3087
    :try_start_25
    new-array v1, p1, [Ljava/lang/Class;

    aput-object v3, v1, p3

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, p2

    .line 3088
    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v4, p1, p3

    aput-object v2, p1, p2

    .line 3086
    invoke-static {v0, v5, v1, p1}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3b
    if-eqz p1, :cond_49

    .line 3091
    new-array p1, p2, [Ljava/lang/Class;

    aput-object v3, p1, p3

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v4, p2, p3

    .line 3090
    invoke-static {v0, v5, p1, p2}, Lcom/chimeranft/core/Refl;->callStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 3093
    :cond_49
    invoke-virtual {v4}, Lcom/chimeranft/core/Main$scheduleProfileRestamp$r$1;->run()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4e
    .catchall {:try_start_25 .. :try_end_4e} :catchall_4e

    :catchall_4e
    :cond_4e
    :goto_4e
    return-void
.end method

.method public static final selfTestPersist()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->selfTestPersist()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final setAccessDeniedCallback(Ljava/lang/Runnable;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->setAccessDeniedCallback(Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final setAccessUsername(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->setAccessUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final setCollectiblePrice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .registers 15

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/chimeranft/core/Main$Companion;->setCollectiblePrice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final setGiftCollection(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/Main$Companion;->setGiftCollection(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final setGiftCollectionMembership(JII)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/chimeranft/core/Main$Companion;->setGiftCollectionMembership(JII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final setGiftInject(JI)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/chimeranft/core/Main$Companion;->setGiftInject(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final setGiftVisibility(JI)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/chimeranft/core/Main$Companion;->setGiftVisibility(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final setGramIconPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->setGramIconPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final setHideOfficialGifts(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->setHideOfficialGifts(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final setHookDisabled(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/Main$Companion;->setHookDisabled(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final setLocalPremium(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->setLocalPremium(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final setMarketSpendEnabled(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->setMarketSpendEnabled(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final setNativeLibraryPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->setNativeLibraryPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final setNumber(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/Main$Companion;->setNumber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final setOptimization(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/Main$Companion;->setOptimization(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final setPinnedChannel(IJLjava/lang/String;Ljava/lang/String;IIJ)Ljava/lang/String;
    .registers 19

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    move v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Lcom/chimeranft/core/Main$Companion;->setPinnedChannel(IJLjava/lang/String;Ljava/lang/String;IIJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final setRating(IIII)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/chimeranft/core/Main$Companion;->setRating(IIII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final setScrollWindow(J)V
    .registers 6

    .line 1474
    iput-wide p1, p0, Lcom/chimeranft/core/Main;->chatScrollUntilMs:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    .line 1475
    :goto_b
    iput-boolean p1, p0, Lcom/chimeranft/core/Main;->chatScrolling:Z

    return-void
.end method

.method public static final setShowUnavailableGifts(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->setShowUnavailableGifts(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final setSmoothMode(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->setSmoothMode(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final setSupporterPopupCallback(Ljava/lang/Runnable;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->setSupporterPopupCallback(Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final setSyncEnabled(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->setSyncEnabled(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final setSyncEndpoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/Main$Companion;->setSyncEndpoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final setUsername(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/Main$Companion;->setUsername(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final setUsernameReplaceOriginal(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->setUsernameReplaceOriginal(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final setVerificationMode(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->setVerificationMode(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final setVisualBalances(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/Main$Companion;->setVisualBalances(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final setWearEnabled(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->setWearEnabled(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final shouldFetchChatAuthor(J)Z
    .registers 10

    .line 2026
    iget-object v0, p0, Lcom/chimeranft/core/Main;->chatAuthorFetchMs:Lcom/chimeranft/core/LongStamps;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2027
    sget-wide v5, Lcom/chimeranft/core/Main;->CHAT_AUTHOR_FETCH_THROTTLE_MS:J

    move-wide v1, p1

    .line 2026
    invoke-virtual/range {v0 .. v6}, Lcom/chimeranft/core/LongStamps;->throttled(JJJ)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public static final shouldSuspendReadHooks(I)Z
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->shouldSuspendReadHooks(I)Z

    move-result p0

    return p0
.end method

.method public static final shouldThrottleForeignFull(ZZZ)Z
    .registers 4

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/chimeranft/core/Main$Companion;->shouldThrottleForeignFull(ZZZ)Z

    move-result p0

    return p0
.end method

.method public static final shutdown()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0}, Lcom/chimeranft/core/Main$Companion;->shutdown()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final stampChatAuthor(Ljava/lang/Object;J)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_34

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-gtz v3, :cond_a

    goto :goto_34

    :cond_a
    const/4 v1, 0x1

    .line 2012
    :try_start_b
    iget-object v2, p0, Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;

    if-eqz v2, :cond_24

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p2, p3}, Lcom/chimeranft/core/Badges;->hasUser(J)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, p2, p3}, Lcom/chimeranft/core/Badges;->applyForId(Ljava/lang/Object;J)Z

    move-result v2
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_24

    if-eqz v2, :cond_24

    const/4 v0, 0x1

    .line 2018
    :catchall_24
    :cond_24
    :try_start_24
    iget-object v2, p0, Lcom/chimeranft/core/Main;->remote:Lcom/chimeranft/core/RemoteIdentity;

    if-eqz v2, :cond_32

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p1, p2, p3}, Lcom/chimeranft/core/RemoteIdentity;->ensureChatIdentity(Ljava/lang/Object;J)Z

    move-result p1
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_32

    if-eqz p1, :cond_32

    goto :goto_33

    :catchall_32
    :cond_32
    move v1, v0

    :goto_33
    return v1

    :cond_34
    :goto_34
    return v0
.end method

.method private final startScrollPoll()V
    .registers 5

    .line 1453
    iget-boolean v0, p0, Lcom/chimeranft/core/Main;->scrollPollScheduled:Z

    if-eqz v0, :cond_5

    goto :goto_d

    .line 1457
    :cond_5
    sget-boolean v0, Lcom/chimeranft/core/Main;->runOnUiThreadResolved:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/chimeranft/core/Main;->runOnUiThread:Ljava/lang/reflect/Method;

    if-nez v0, :cond_e

    :goto_d
    return-void

    :cond_e
    const/4 v0, 0x1

    .line 1458
    iput-boolean v0, p0, Lcom/chimeranft/core/Main;->scrollPollScheduled:Z

    .line 1459
    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    sget-object v1, Lcom/chimeranft/core/Main;->SCROLL_POLL:Lcom/chimeranft/core/Main$Companion$SCROLL_POLL$1;

    sget-wide v2, Lcom/chimeranft/core/Main;->SCROLL_POLL_MS:J

    # invokes: Lcom/chimeranft/core/Main$Companion;->postUiStatic(Ljava/lang/Runnable;J)V
    invoke-static {v0, v1, v2, v3}, Lcom/chimeranft/core/Main$Companion;->access$postUiStatic(Lcom/chimeranft/core/Main$Companion;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static final stringify(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final declared-synchronized switchToSlot(I)V
    .registers 10

    monitor-enter p0

    .line 411
    :try_start_1
    iget v0, p0, Lcom/chimeranft/core/Main;->currentSlot:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_43

    if-ne p1, v0, :cond_7

    monitor-exit p0

    return-void

    .line 412
    :cond_7
    :try_start_7
    iput p1, p0, Lcom/chimeranft/core/Main;->currentSlot:I

    .line 413
    invoke-direct {p0, p1}, Lcom/chimeranft/core/Main;->clientUserIdForSlot(I)J

    move-result-wide v0

    .line 414
    iput-wide v0, p0, Lcom/chimeranft/core/Main;->realId:J

    .line 415
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->invalidateControllerCache()V

    .line 417
    sget-object v2, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v2}, Lcom/chimeranft/core/Main$Companion;->clearDeferredRepaints()V

    .line 418
    invoke-static {}, Lcom/chimeranft/core/Repaint;->reset()V

    .line 419
    iget-object v2, p0, Lcom/chimeranft/core/Main;->storeBySlot:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chimeranft/core/Store;

    if-nez v2, :cond_45

    .line 422
    new-instance v2, Lcom/chimeranft/core/Store;

    iget-object v3, p0, Lcom/chimeranft/core/Main;->dataDir:Ljava/lang/String;

    const-wide v4, 0x2540be400L

    int-to-long v6, p1

    add-long/2addr v6, v4

    invoke-direct {v2, v3, v6, v7}, Lcom/chimeranft/core/Store;-><init>(Ljava/lang/String;J)V

    .line 423
    invoke-virtual {v2}, Lcom/chimeranft/core/Store;->load()Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 424
    iget-object v3, p0, Lcom/chimeranft/core/Main;->storeBySlot:Ljava/util/HashMap;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_45

    :catchall_43
    move-exception p1

    goto :goto_9f

    .line 426
    :cond_45
    :goto_45
    iput-object v2, p0, Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;

    .line 427
    iget-object p1, p0, Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;

    if-eqz p1, :cond_54

    .line 428
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/chimeranft/core/Identity;->setMyId(J)V

    .line 429
    invoke-direct {p0}, Lcom/chimeranft/core/Main;->configureIdentityFromStore()V

    .line 431
    :cond_54
    iget-object p1, p0, Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;

    if-eqz p1, :cond_66

    .line 432
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Lcom/chimeranft/core/Badges;->setSelfId(J)V

    .line 433
    iget-object p1, p0, Lcom/chimeranft/core/Main;->badges:Lcom/chimeranft/core/Badges;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/chimeranft/core/Badges;->syncExteraCache()Z

    .line 435
    :cond_66
    iget-object p1, p0, Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;

    if-eqz p1, :cond_89

    .line 437
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/chimeranft/core/GiftHook;->switchAccount(JLcom/chimeranft/core/Store;)V

    .line 438
    iget-object p1, p0, Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/chimeranft/core/Store;->getInjectableEntries()[Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/chimeranft/core/GiftHook;->configure([Lorg/json/JSONObject;)V

    .line 439
    iget-object p1, p0, Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;

    .line 440
    const-string v3, "chimeranft-warm-sw"

    .line 441
    new-instance v4, Lcom/chimeranft/core/Main$switchToSlot$1;

    invoke-direct {v4, p1}, Lcom/chimeranft/core/Main$switchToSlot$1;-><init>(Lcom/chimeranft/core/GiftHook;)V

    const/4 p1, 0x1

    .line 440
    invoke-static {v3, p1, v4}, Lcom/chimeranft/core/Safe;->start(Ljava/lang/String;ILjava/lang/Runnable;)Z

    .line 447
    :cond_89
    iget-object p1, p0, Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;

    if-eqz p1, :cond_93

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/chimeranft/core/SyncClient;->switchAccount(JLcom/chimeranft/core/Store;)V

    .line 448
    :cond_93
    iget-object p1, p0, Lcom/chimeranft/core/Main;->notifier:Lcom/chimeranft/core/Notifier;
    :try_end_95
    .catchall {:try_start_7 .. :try_end_95} :catchall_43

    if-eqz p1, :cond_9d

    .line 451
    :try_start_97
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/chimeranft/core/Notifier;->refresh()V
    :try_end_9d
    .catchall {:try_start_97 .. :try_end_9d} :catchall_9d

    .line 456
    :catchall_9d
    :cond_9d
    monitor-exit p0

    return-void

    :goto_9f
    :try_start_9f
    monitor-exit p0
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_43

    throw p1
.end method

.method private final takeDeferredChatCells()Ljava/util/ArrayList;
    .registers 4

    .line 1696
    iget-object v0, p0, Lcom/chimeranft/core/Main;->chatPendingCells:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 1697
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/chimeranft/core/Main;->chatPendingCells:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1698
    iget-object v2, p0, Lcom/chimeranft/core/Main;->chatPendingCells:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->clear()V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    .line 1699
    monitor-exit v0

    return-object v1

    :catchall_15
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final takeUpgradeAttrs(J)Ljava/util/ArrayList;
    .registers 3

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/Main$Companion;->takeUpgradeAttrs(J)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final textLayoutIsHeavy(IZ)Z
    .registers 3

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/Main$Companion;->textLayoutIsHeavy(IZ)Z

    move-result p0

    return p0
.end method

.method public static final transitionEndClears(I)Z
    .registers 2

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0}, Lcom/chimeranft/core/Main$Companion;->transitionEndClears(I)Z

    move-result p0

    return p0
.end method

.method public static final transitionOpenAt(JJ)Z
    .registers 5

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/chimeranft/core/Main$Companion;->transitionOpenAt(JJ)Z

    move-result p0

    return p0
.end method

.method public static final updateGift(JLjava/lang/String;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/chimeranft/core/Main$Companion;->updateGift(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final updateGifts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/chimeranft/core/Main$Companion;->updateGifts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final applyTransfer(JLorg/json/JSONObject;)Ljava/lang/String;
    .registers 32

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 3223
    const-string v2, "resale_bought"

    const-string v3, "kind"

    const-string v4, "gift_kind"

    const-string v5, ""

    const/4 v6, 0x0

    .line 3225
    :try_start_d
    iget-object v7, v0, Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;

    if-eqz v7, :cond_13

    if-nez v1, :cond_17

    :cond_13
    move-object/from16 v16, v6

    goto/16 :goto_232

    .line 3230
    :cond_17
    sget-object v7, Lcom/chimeranft/core/Main;->Companion:Lcom/chimeranft/core/Main$Companion;

    invoke-virtual {v7}, Lcom/chimeranft/core/Main$Companion;->ensureAccountNow()V

    .line 3231
    iget-wide v7, v0, Lcom/chimeranft/core/Main;->realId:J

    cmp-long v9, p1, v7

    if-eqz v9, :cond_23

    return-object v6

    .line 3232
    :cond_23
    const-string v7, "event_id"

    invoke-virtual {v1, v7, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3233
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_30

    return-object v6

    .line 3234
    :cond_30
    iget-object v7, v0, Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7, v13}, Lcom/chimeranft/core/Store;->isTransferApplied(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3d

    goto/16 :goto_22f

    .line 3238
    :cond_3d
    const-string v7, "premium_gift"

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_47
    .catchall {:try_start_d .. :try_end_47} :catchall_7b

    const-string v14, "FAIL"

    const-string v8, "sender_name"

    const-string v9, "sender_id"

    const/4 v15, 0x2

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    if-eqz v7, :cond_c3

    .line 3240
    :try_start_53
    const-string v2, "months"

    invoke-virtual {v1, v2, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v19

    .line 3241
    invoke-virtual {v1, v9, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v17

    move-wide v2, v11

    .line 3242
    invoke-virtual {v1, v8, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3243
    iget-object v8, v0, Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide/from16 v10, v17

    move/from16 v9, v19

    const/4 v7, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/chimeranft/core/Store;->applyIncomingPremiumGift(IJLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v17, v10

    if-eqz v4, :cond_7f

    .line 3244
    invoke-static {v4, v14, v7, v15, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7f

    return-object v6

    :catchall_7b
    move-object/from16 v16, v6

    goto/16 :goto_232

    .line 3245
    :cond_7f
    iget-object v4, v0, Lcom/chimeranft/core/Main;->identity:Lcom/chimeranft/core/Identity;

    const/4 v5, 0x1

    if-eqz v4, :cond_8a

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Lcom/chimeranft/core/Identity;->setLocalPremium(Z)V

    .line 3246
    :cond_8a
    iget v4, v0, Lcom/chimeranft/core/Main;->currentSlot:I

    invoke-static {v4, v5}, Lcom/chimeranft/core/LocalPremium;->apply(IZ)V

    .line 3247
    invoke-direct {v0}, Lcom/chimeranft/core/Main;->refresh()V

    .line 3248
    iget-object v4, v0, Lcom/chimeranft/core/Main;->giftReveal:Lcom/chimeranft/core/GiftReveal;

    if-eqz v4, :cond_b8

    cmp-long v4, v17, v2

    if-lez v4, :cond_b8

    .line 3250
    const-string v4, "price_stars"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-gtz v1, :cond_aa

    .line 3251
    sget-object v1, Lcom/chimeranft/core/GiftHook;->Companion:Lcom/chimeranft/core/GiftHook$Companion;

    invoke-virtual {v1, v9}, Lcom/chimeranft/core/GiftHook$Companion;->premiumStarsForMonths(I)J

    move-result-wide v4

    :cond_aa
    move-wide/from16 v20, v4

    .line 3252
    iget-object v1, v0, Lcom/chimeranft/core/Main;->giftReveal:Lcom/chimeranft/core/GiftReveal;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v16, v1

    move/from16 v19, v9

    invoke-virtual/range {v16 .. v21}, Lcom/chimeranft/core/GiftReveal;->showPremiumReceived(JIJ)V

    .line 3254
    :cond_b8
    iget-object v1, v0, Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;

    if-eqz v1, :cond_22f

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/chimeranft/core/SyncClient;->pushAuthoritativeStateAsync()V

    return-object v13

    :cond_c3
    move-wide v10, v11

    const/4 v7, 0x0

    .line 3257
    const-string v12, "gift"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    if-nez v12, :cond_cf

    goto/16 :goto_22f

    .line 3259
    :cond_cf
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_d3
    .catchall {:try_start_53 .. :try_end_d3} :catchall_7b

    .line 3260
    :try_start_d3
    const-string v6, "gift_offer"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e3

    const-string v6, "gift_offer_result"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e6

    :cond_e3
    move-object v7, v12

    goto/16 :goto_229

    .line 3265
    :cond_e6
    const-string v3, "market_sold_notice"

    invoke-virtual {v12, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17b

    .line 3269
    iget-object v2, v0, Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 p1, v8

    move-wide v7, v10

    move-object v4, v12

    .line 3270
    invoke-virtual {v1, v9, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    move-object/from16 v10, p1

    move-object v9, v13

    invoke-virtual {v1, v10, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-wide/from16 v26, v7

    move-object v8, v2

    move-wide/from16 v1, v26

    move-object v7, v4

    move-object v10, v9

    move-object v9, v3

    .line 3269
    invoke-virtual/range {v8 .. v13}, Lcom/chimeranft/core/Store;->applyMarketSoldNotice(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_116
    .catchall {:try_start_d3 .. :try_end_116} :catchall_165

    move-object v13, v10

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 3271
    :try_start_119
    invoke-static {v3, v14, v6, v15, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v3
    :try_end_11d
    .catchall {:try_start_119 .. :try_end_11d} :catchall_177

    if-eqz v3, :cond_120

    return-object v4

    .line 3275
    :cond_120
    :try_start_120
    iget-object v3, v0, Lcom/chimeranft/core/Main;->giftReveal:Lcom/chimeranft/core/GiftReveal;

    if-eqz v3, :cond_169

    .line 3277
    const-string v3, "resale_config"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_12e

    move-wide v11, v1

    goto :goto_134

    .line 3278
    :cond_12e
    const-string v4, "stars"

    invoke-virtual {v3, v4, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    :goto_134
    if-nez v3, :cond_139

    move-wide/from16 v21, v1

    goto :goto_141

    .line 3279
    :cond_139
    const-string v4, "nanoton"

    invoke-virtual {v3, v4, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    move-wide/from16 v21, v3

    :goto_141
    cmp-long v3, v11, v1

    if-gtz v3, :cond_149

    cmp-long v3, v21, v1

    if-lez v3, :cond_169

    .line 3281
    :cond_149
    iget-object v1, v0, Lcom/chimeranft/core/Main;->giftReveal:Lcom/chimeranft/core/GiftReveal;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "title"

    invoke-virtual {v7, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3282
    iget-object v2, v0, Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v11, v12}, Lcom/chimeranft/core/Store;->netSaleStars(J)J

    move-result-wide v23

    move-object/from16 v17, v1

    move-wide/from16 v19, v11

    .line 3281
    invoke-virtual/range {v17 .. v24}, Lcom/chimeranft/core/GiftReveal;->showSoldNotice(Ljava/lang/String;JJJ)V

    goto :goto_169

    :catchall_165
    const/16 v16, 0x0

    goto/16 :goto_232

    .line 3284
    :cond_169
    :goto_169
    invoke-virtual {v0}, Lcom/chimeranft/core/Main;->reloadGifts()V

    .line 3285
    iget-object v1, v0, Lcom/chimeranft/core/Main;->sync:Lcom/chimeranft/core/SyncClient;

    if-eqz v1, :cond_22f

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/chimeranft/core/SyncClient;->pushAuthoritativeStateAsync()V

    return-object v13

    :catchall_177
    move-object/from16 v16, v4

    goto/16 :goto_232

    :cond_17b
    move-object v7, v12

    move-wide v11, v10

    move-object v10, v8

    .line 3291
    invoke-virtual {v7, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_196

    iget-object v3, v0, Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;

    if-eqz v3, :cond_196

    .line 3293
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v7}, Lcom/chimeranft/core/GiftHook;->remintPurchasedEntry(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_196

    goto :goto_197

    :cond_196
    move-object v3, v7

    .line 3296
    :goto_197
    iget-object v8, v0, Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6, v13}, Lcom/chimeranft/core/Store;->applyIncomingTransfer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1b6

    .line 3299
    const-string v8, "duplicate"
    :try_end_1a8
    .catchall {:try_start_120 .. :try_end_1a8} :catchall_165

    const/4 v11, 0x0

    const/4 v12, 0x0

    :try_start_1aa
    invoke-static {v6, v8, v11, v15, v12}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b8

    goto/16 :goto_22f

    :catchall_1b2
    move-object/from16 v16, v12

    goto/16 :goto_232

    :cond_1b6
    const/4 v11, 0x0

    const/4 v12, 0x0

    :cond_1b8
    if-eqz v6, :cond_226

    .line 3306
    invoke-static {v6, v14, v11, v15, v12}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_226

    const-string v8, "BLOCKED"

    invoke-static {v6, v8, v11, v15, v12}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_226

    .line 3307
    const-string v8, "RETRY"

    invoke-static {v6, v8, v11, v15, v12}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8
    :try_end_1ce
    .catchall {:try_start_1aa .. :try_end_1ce} :catchall_1b2

    if-eqz v8, :cond_1d3

    const/16 v16, 0x0

    goto :goto_228

    .line 3311
    :cond_1d3
    :try_start_1d3
    invoke-virtual {v0}, Lcom/chimeranft/core/Main;->reloadGifts()V

    .line 3312
    iget-object v8, v0, Lcom/chimeranft/core/Main;->giftReveal:Lcom/chimeranft/core/GiftReveal;

    if-eqz v8, :cond_22f

    .line 3318
    const-string v8, "b64"

    invoke-virtual {v3, v8, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-wide/16 v11, 0x0

    .line 3319
    invoke-virtual {v1, v9, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v21

    .line 3324
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22f

    .line 3328
    invoke-virtual {v7, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sent"
    :try_end_1f6
    .catchall {:try_start_1d3 .. :try_end_1f6} :catchall_165

    const/4 v6, 0x0

    const/4 v12, 0x0

    :try_start_1f8
    invoke-static {v2, v3, v6, v15, v12}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2
    :try_end_1fc
    .catchall {:try_start_1f8 .. :try_end_1fc} :catchall_1b2

    if-eqz v2, :cond_213

    .line 3330
    :try_start_1fe
    iget-object v1, v0, Lcom/chimeranft/core/Main;->giftReveal:Lcom/chimeranft/core/GiftReveal;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "custom_comment"

    invoke-virtual {v7, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v25}, Lcom/chimeranft/core/GiftReveal;->showSent(Ljava/lang/String;JLjava/lang/String;ZZ)V

    return-object v13

    .line 3334
    :cond_213
    iget-object v2, v0, Lcom/chimeranft/core/Main;->giftReveal:Lcom/chimeranft/core/GiftReveal;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v10, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v25}, Lcom/chimeranft/core/GiftReveal;->show(Ljava/lang/String;JLjava/lang/String;ZZ)V

    return-object v13

    :cond_226
    move-object/from16 v16, v12

    :goto_228
    return-object v16

    .line 3262
    :goto_229
    invoke-direct {v0, v1, v7, v3}, Lcom/chimeranft/core/Main;->applyOfferEvent(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1
    :try_end_22d
    .catchall {:try_start_1fe .. :try_end_22d} :catchall_165

    if-eqz v1, :cond_230

    :cond_22f
    :goto_22f
    return-object v13

    :cond_230
    const/16 v16, 0x0

    :goto_232
    return-object v16
.end method

.method public final refreshChatCellsForAuthor(J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 1795
    invoke-direct {p0, p1, p2, v0}, Lcom/chimeranft/core/Main;->queueRestamp(JZ)V

    return-void
.end method

.method public final reloadGifts()V
    .registers 3

    .line 3349
    :try_start_0
    iget-object v0, p0, Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;

    if-eqz v1, :cond_1f

    .line 3351
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/chimeranft/core/Main;->store:Lcom/chimeranft/core/Store;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/chimeranft/core/Store;->getInjectableEntries()[Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chimeranft/core/GiftHook;->configure([Lorg/json/JSONObject;)V

    .line 3352
    iget-object v0, p0, Lcom/chimeranft/core/Main;->giftHook:Lcom/chimeranft/core/GiftHook;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/chimeranft/core/GiftHook;->reloadSelfGifts()V
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_1f

    :catchall_1f
    :cond_1f
    return-void
.end method
